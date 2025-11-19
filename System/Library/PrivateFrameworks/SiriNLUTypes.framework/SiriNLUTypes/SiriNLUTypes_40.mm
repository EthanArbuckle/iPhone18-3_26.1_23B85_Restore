uint64_t SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersionReadFrom(uint64_t a1, void *a2)
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
        v38 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38 & 0x7F) << v5;
        if ((v38 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 28) |= 4u;
        while (1)
        {
          v39 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v39 & 0x7F) << v30;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_63;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v32;
        }

LABEL_63:
        v36 = 24;
LABEL_64:
        *(a1 + v36) = v20;
        goto LABEL_65;
      }

      if (v13 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_65;
      }

      v21 = PBReaderReadString();
      v22 = *(a1 + 8);
      *(a1 + 8) = v21;

LABEL_65:
      v37 = [a2 position];
      if (v37 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        v41 = 0;
        v27 = [a2 position] + 1;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v26 |= (v41 & 0x7F) << v24;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v24 += 7;
        v11 = v25++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_59;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v26;
      }

LABEL_59:
      v36 = 20;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_32;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 1u;
      while (1)
      {
        v40 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v40 & 0x7F) << v14;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_55;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v16;
      }

LABEL_55:
      v36 = 16;
    }

    goto LABEL_64;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALTurnInputRuleReadFrom(id *a1, void *a2)
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
        LOBYTE(v17) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(SIRINLUINTERNALContextRule);
        [a1 addPositiveContextRules:v14];
LABEL_25:
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALContextRuleReadFrom(v14, a2))
        {
LABEL_31:

          return 0;
        }

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SIRINLUINTERNALUtteranceRule);
        objc_storeStrong(a1 + 3, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALUtteranceRuleReadFrom(v14, a2))
        {
          goto LABEL_31;
        }

LABEL_27:
        PBReaderRecallMark();

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SIRINLUINTERNALContextRule);
    [a1 addNegativeContextRules:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalpsc::PSCServiceResponse::formatText(sirinluinternalpsc::PSCServiceResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "pommes_probability", *(this + 2));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalpsc::PSCServiceResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::write(a2, *(this + 8));
  }

  return this;
}

uint64_t sirinluinternalpsc::PSCServiceResponse::readFrom(sirinluinternalpsc::PSCServiceResponse *this, PB::Reader *a2)
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
          goto LABEL_23;
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
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_23:
        if (!PB::Reader::skip(a2))
        {
          v22 = 0;
          return v22 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
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
        goto LABEL_23;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluinternalpsc::PSCServiceResponse::~PSCServiceResponse(sirinluinternalpsc::PSCServiceResponse *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluinternalpsc::PSCServiceResponse::PSCServiceResponse(uint64_t this)
{
  *this = &unk_1F48781F0;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F48781F0;
  *(this + 12) = 0;
  return this;
}

float sirinluinternalpsc::PSCServiceResponse::PSCServiceResponse(sirinluinternalpsc::PSCServiceResponse *this, const sirinluinternalpsc::PSCServiceResponse *a2)
{
  *this = &unk_1F48781F0;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

{
  *this = &unk_1F48781F0;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

uint64_t sirinluinternalpsc::PSCServiceResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F48781F0;
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
    v8 = &unk_1F48781F0;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v10 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float sirinluinternalpsc::swap(sirinluinternalpsc *this, sirinluinternalpsc::PSCServiceResponse *a2, sirinluinternalpsc::PSCServiceResponse *a3)
{
  v3 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float sirinluinternalpsc::PSCServiceResponse::PSCServiceResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48781F0;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F48781F0;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

BOOL sirinluinternalpsc::PSCServiceResponse::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

float sirinluinternalpsc::PSCServiceResponse::hash_value(sirinluinternalpsc::PSCServiceResponse *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  return result;
}

uint64_t SIRINLUINTERNALOverrideCollectionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 48) |= 1u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_46:
          *(a1 + 8) = v24;
          goto LABEL_47;
        }

        if (v13 == 2)
        {
          v15 = PBReaderReadString();
          v16 = 16;
LABEL_28:
          v17 = *(a1 + v16);
          *(a1 + v16) = v15;

          goto LABEL_47;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v15 = PBReaderReadString();
            v16 = 40;
            goto LABEL_28;
          case 4:
            v14 = objc_alloc_init(SIRINLUINTERNALParseOverride);
            [a1 addParseOverrides:v14];
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALParseOverrideReadFrom(v14, a2))
            {
LABEL_49:

              return 0;
            }

            goto LABEL_31;
          case 5:
            v14 = objc_alloc_init(SIRINLUINTERNALComponentOverride);
            [a1 addComponentOverrides:v14];
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALComponentOverrideReadFrom(v14, a2))
            {
              goto LABEL_49;
            }

LABEL_31:
            PBReaderRecallMark();

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t siricommon::Int32Value::formatText(siricommon::Int32Value *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "value");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t siricommon::Int32Value::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t siricommon::Int32Value::readFrom(siricommon::Int32Value *this, PB::Reader *a2)
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
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_46;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
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
              goto LABEL_41;
            }

            v32 = v22 + 1;
            v33 = *(v23 + v22);
            *(a2 + 1) = v32;
            v26 |= (v33 & 0x7F) << v30;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v32;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_40;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_40:
          v3 = v32;
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

LABEL_41:
        *(this + 2) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v34 = 0;
          return v34 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_46;
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
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_46:
  v34 = v4 ^ 1;
  return v34 & 1;
}

void siricommon::Int32Value::~Int32Value(siricommon::Int32Value *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siricommon::Int32Value::Int32Value(uint64_t this)
{
  *this = &unk_1F4878240;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F4878240;
  *(this + 12) = 0;
  return this;
}

uint64_t siricommon::Int32Value::Int32Value(uint64_t this, const siricommon::Int32Value *a2)
{
  *this = &unk_1F4878240;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_1F4878240;
  *(this + 12) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t siricommon::Int32Value::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_1F4878240;
    v3 = *(a2 + 12) & 1;
    v4 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_1F4878240;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t siricommon::swap(uint64_t this, siricommon::Int32Value *a2, siricommon::Int32Value *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t siricommon::Int32Value::Int32Value(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4878240;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_1F4878240;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

BOOL siricommon::Int32Value::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t siricommon::Int32Value::hash_value(siricommon::Int32Value *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sirinluexternal::SystemDialogActGroup::formatText(sirinluexternal::SystemDialogActGroup *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "child_acts");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "system_dialog_act");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::SystemDialogActGroup::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluexternal::SystemDialogActGroup::operator=(uint64_t a1, const sirinluexternal::SystemDialogActGroup *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternal::SystemDialogActGroup::~SystemDialogActGroup(v7);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::SystemDialogActGroup *a2, sirinluexternal::SystemDialogActGroup *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F4878290;
  *(a1 + 24) = 0u;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (*v4)
    {
      std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
      operator delete(*v4);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluexternal::SystemDialogActGroup::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternal::SystemDialogActGroup::~SystemDialogActGroup(v7);
  }

  return a1;
}

uint64_t sirinluexternal::SystemDialogActGroup::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || !sirinluexternal::SystemDialogAct::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  v10 = a2 + 8;
  v9 = *(a2 + 8);
  if (v7 - v6 != *(v10 + 8) - v9)
  {
    return 0;
  }

  if (v6 == v7)
  {
    return 1;
  }

  do
  {
    v12 = *v6;
    v6 += 8;
    v11 = v12;
    v13 = *v9++;
    result = sirinluexternal::SystemDialogActGroup::operator==(v11, v13);
    if (result)
    {
      v15 = v6 == v7;
    }

    else
    {
      v15 = 1;
    }
  }

  while (!v15);
  return result;
}

unint64_t sirinluexternal::SystemDialogActGroup::hash_value(sirinluexternal::SystemDialogActGroup *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = sirinluexternal::SystemDialogAct::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5++;
      v6 ^= sirinluexternal::SystemDialogActGroup::hash_value(v7);
    }

    while (v5 != v4);
  }

  return v6 ^ v3;
}

uint64_t sirinluexternal::SystemDialogActGroup::makeSystemDialogAct(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::MultilingualVariant::formatText(sirinluexternal::MultilingualVariant *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 24))
  {
    PB::TextFormatter::format(a2, "language_variant_score", *(this + 2));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::MultilingualVariant::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    v4 = *(v3 + 16);

    return PB::Writer::write(a2, v4);
  }

  return this;
}

uint64_t sirinluexternal::MultilingualVariant::readFrom(sirinluexternal::MultilingualVariant *this, PB::Reader *a2)
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
        goto LABEL_31;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 24) |= 1u;
        v22 = *(a2 + 1);
        if (v22 <= 0xFFFFFFFFFFFFFFF7 && v22 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v22);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
        if ((v10 >> 3) == 1)
        {
          operator new();
        }

LABEL_22:
        if (!PB::Reader::skip(a2))
        {
          v23 = 0;
          return v23 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_31;
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

LABEL_31:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternal::MultilingualVariant::~MultilingualVariant(sirinluexternal::MultilingualVariant *this)
{
  sirinluexternal::MultilingualVariant::~MultilingualVariant(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F48782E0;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluexternal::MultilingualVariant::MultilingualVariant(uint64_t this)
{
  *this = &unk_1F48782E0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F48782E0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t sirinluexternal::MultilingualVariant::MultilingualVariant(uint64_t this, const sirinluexternal::MultilingualVariant *a2)
{
  *this = &unk_1F48782E0;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    v2 = *(a2 + 2);
    *(this + 24) |= 1u;
    *(this + 16) = v2;
  }

  return this;
}

uint64_t sirinluexternal::MultilingualVariant::operator=(uint64_t a1, const sirinluexternal::MultilingualVariant *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::MultilingualVariant::MultilingualVariant(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sirinluexternal::MultilingualVariant::~MultilingualVariant(&v7);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::MultilingualVariant *a2, sirinluexternal::MultilingualVariant *a3)
{
  v3 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

uint64_t sirinluexternal::MultilingualVariant::MultilingualVariant(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48782E0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sirinluexternal::MultilingualVariant::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::MultilingualVariant::MultilingualVariant(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sirinluexternal::MultilingualVariant::~MultilingualVariant(&v7);
  }

  return a1;
}

BOOL sirinluexternal::MultilingualVariant::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
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

  v10 = v6 >= 0 ? *(a1 + 8) : *v4;
  v11 = v9 >= 0 ? *(a2 + 8) : *v5;
  if (memcmp(v10, v11, v7))
  {
    return 0;
  }

LABEL_20:
  result = (*(a2 + 24) & 1) == 0;
  if (*(a1 + 24))
  {
    return (*(a2 + 24) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return result;
}

unint64_t sirinluexternal::MultilingualVariant::hash_value(sirinluexternal::MultilingualVariant *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  if (*(this + 24))
  {
    v3 = *(this + 2);
    if (v3 == 0.0)
    {
      v3 = 0.0;
    }
  }

  else
  {
    v3 = 0.0;
  }

  return *&v3 ^ v2;
}

uint64_t SIRINLUEXTERNALUtteranceAlignmentReadFrom(_BYTE *a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v21 = objc_alloc_init(SIRINLUEXTERNALUtteranceSpan);
        [a1 addSpans:v21];
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUtteranceSpanReadFrom(v21, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          a1[24] |= 1u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v28 = 8;
LABEL_51:
          *&a1[v28] = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
      if (v29 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    a1[24] |= 2u;
    while (1)
    {
      LOBYTE(v31[0]) = 0;
      v25 = [a2 position] + 1;
      if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
      {
        v27 = [a2 data];
        [v27 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v24 |= (v31[0] & 0x7F) << v22;
      if ((v31[0] & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v11 = v23++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_46;
      }
    }

    if ([a2 hasError])
    {
      v20 = 0;
    }

    else
    {
      v20 = v24;
    }

LABEL_46:
    v28 = 12;
    goto LABEL_51;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALSSU_INFERENCESsuInferenceResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALUserParse);
        [a1 addParses:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserParseReadFrom(v13, a2))
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

uint64_t SIRINLUINTERNALPreprocessingWrapperReadFrom(id *a1, void *a2)
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
        LOBYTE(v17) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALEMBEDDINGEmbeddingResponse);
          objc_storeStrong(a1 + 1, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALEMBEDDINGEmbeddingResponseReadFrom(v14, a2))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponse);
          objc_storeStrong(a1 + 2, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALMENTION_RESOLVERMentionResolverResponseReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALTOKENIZERTokenizerResponse);
          objc_storeStrong(a1 + 4, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALTOKENIZERTokenizerResponseReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALSPANMATCHSpanMatchResponse);
          objc_storeStrong(a1 + 3, v14);
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALSPANMATCHSpanMatchResponseReadFrom(v14, a2))
          {
            goto LABEL_38;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALRRMetadataReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) == 3)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 32) |= 1u;
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
            goto LABEL_40;
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

LABEL_40:
        *(a1 + 16) = v21;
        goto LABEL_41;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SIRINLUEXTERNALRRBoundingBox);
        objc_storeStrong((a1 + 8), v14);
        v24 = 0;
        v25 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRRBoundingBoxReadFrom(v14, a2))
        {
          goto LABEL_43;
        }

LABEL_25:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v22 = [a2 position];
      if (v22 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SIRINLUEXTERNALRRSurroundingText);
    [a1 addSurroundingTexts:v14];
    v24 = 0;
    v25 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRRSurroundingTextReadFrom(v14, a2))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternalssu_inference::SsuInferenceSetup::formatText(sirinluexternalssu_inference::SsuInferenceSetup *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalssu_inference::SsuInferenceSetup::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 8))
  {
    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternalssu_inference::SsuInferenceSetup::readFrom(sirinluexternalssu_inference::SsuInferenceSetup *this, PB::Reader *a2)
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

void sirinluexternalssu_inference::SsuInferenceSetup::~SsuInferenceSetup(sirinluexternalssu_inference::SsuInferenceSetup *this)
{
  sirinluexternalssu_inference::SsuInferenceSetup::~SsuInferenceSetup(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4878330;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternalssu_inference::SsuInferenceSetup::SsuInferenceSetup(void *this)
{
  *this = &unk_1F4878330;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4878330;
  this[1] = 0;
  return this;
}

void *sirinluexternalssu_inference::SsuInferenceSetup::SsuInferenceSetup(void *this, const sirinluexternalssu_inference::SsuInferenceSetup *a2)
{
  *this = &unk_1F4878330;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternalssu_inference::SsuInferenceSetup *sirinluexternalssu_inference::SsuInferenceSetup::operator=(const sirinluexternalssu_inference::SsuInferenceSetup *a1, const sirinluexternalssu_inference::SsuInferenceSetup *a2)
{
  if (a1 != a2)
  {
    sirinluexternalssu_inference::SsuInferenceSetup::SsuInferenceSetup(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluexternalssu_inference::SsuInferenceSetup::~SsuInferenceSetup(&v5);
  }

  return a1;
}

uint64_t sirinluexternalssu_inference::swap(uint64_t this, sirinluexternalssu_inference::SsuInferenceSetup *a2, sirinluexternalssu_inference::SsuInferenceSetup *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluexternalssu_inference::SsuInferenceSetup::SsuInferenceSetup(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4878330;
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
  *a1 = &unk_1F4878330;
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

uint64_t sirinluexternalssu_inference::SsuInferenceSetup::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4878330;
    v6[1] = v4;
    sirinluexternalssu_inference::SsuInferenceSetup::~SsuInferenceSetup(v6);
  }

  return a1;
}

BOOL sirinluexternalssu_inference::SsuInferenceSetup::operator==(uint64_t a1, uint64_t a2)
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

unint64_t sirinluexternalssu_inference::SsuInferenceSetup::hash_value(sirinluexternalssu_inference::SsuInferenceSetup *this)
{
  result = *(this + 1);
  if (result)
  {
    return std::__string_hash<char>::operator()[abi:ne200100](result);
  }

  return result;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::formatText(sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "response");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::readFrom(sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse *this, PB::Reader *a2)
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

void sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::~ITFMSpanFeaturizerResponse(sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse *this)
{
  sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::~ITFMSpanFeaturizerResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878380;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

void *sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::ITFMSpanFeaturizerResponse(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878380;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878380;
  return this;
}

void *sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::ITFMSpanFeaturizerResponse(void *this, const sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse *a2)
{
  *this = &unk_1F4878380;
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

uint64_t sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::operator=(uint64_t a1, const sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::ITFMSpanFeaturizerResponse(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::~ITFMSpanFeaturizerResponse(&v5);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::swap(uint64_t this, sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse *a2, sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::ITFMSpanFeaturizerResponse(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4878380;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
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
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::ITFMSpanFeaturizerResponse(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::~ITFMSpanFeaturizerResponse(&v5);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (!v5 || !sirinluinternalsnlp_intermediate::SpanFeaturizerResponse::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
  result = v7 == 0;
  if (!v6)
  {
    return result;
  }

  if (v7)
  {
    v9 = *(v6 + 23);
    if (v9 >= 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = *(v6 + 8);
    }

    v11 = *(v7 + 23);
    v12 = v11;
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(v7 + 8);
    }

    if (v10 == v11)
    {
      v13 = v9 >= 0 ? *(a1 + 8) : *v6;
      v14 = v12 >= 0 ? *(a2 + 8) : *v7;
      if (!memcmp(v13, v14, v10))
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::hash_value(sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse *this)
{
  v2 = *(this + 2);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = sirinluinternalsnlp_intermediate::LinearizedTensor::hash_value(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 1);
  if (v5)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v5);
  }

  return v5 ^ v4;
}

uint64_t sirinluinternalsnlp_intermediate::ITFMSpanFeaturizerResponse::makeResponse(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t siri_nlu_types::ssu_compression_utilities::compressArchiveForSSUFilePath(std::string *this, const std::__fs::filesystem::path *a2, const std::__fs::filesystem::path *a3)
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = MEMORY[0x1E696AEC0];
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    pn = *this;
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &pn;
  }

  else
  {
    v6 = pn.__r_.__value_.__r.__words[0];
  }

  v7 = [v5 stringWithUTF8String:v6];
  v8 = [v4 fileURLWithPath:v7];

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  v9 = MEMORY[0x1E695DFF8];
  v10 = MEMORY[0x1E696AEC0];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = a2->__pn_;
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_pn = &pn;
  }

  else
  {
    p_pn = pn.__r_.__value_.__r.__words[0];
  }

  v12 = [v10 stringWithUTF8String:p_pn];
  v13 = [v9 fileURLWithPath:v12];

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  v24 = 0;
  v14 = [SSUCompressionUtils compressArchiveForSSUFileURL:v8 outputFileURL:v13 error:&v24];
  v15 = v24;
  if (!v14)
  {
    v17 = v15;
    exception = __cxa_allocate_exception(0x10uLL);
    v19 = exception;
    if (!v17)
    {
      MEMORY[0x1CCA7EB10](exception, "Unable to compress for some unknown reason");
      __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    [v17 localizedDescription];
    v20 = [objc_claimAutoreleasedReturnValue() UTF8String];
    std::string::basic_string[abi:ne200100]<0>(&v23, v20);
    v21 = std::string::insert(&v23, 0, "Error during compression: ");
    v22 = *&v21->__r_.__value_.__l.__data_;
    pn.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&pn.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1CCA7EB20](v19, &pn);
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return 1;
}

void sub_1C8B85170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);

    if ((v26 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (!v26)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  __cxa_free_exception(v24);
  goto LABEL_8;
}

uint64_t siri_nlu_types::ssu_compression_utilities::decompressFromCompressedSSUFilePath(std::string *this, const std::__fs::filesystem::path *a2, const std::__fs::filesystem::path *a3)
{
  v4 = MEMORY[0x1E695DFF8];
  v5 = MEMORY[0x1E696AEC0];
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    pn = *this;
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &pn;
  }

  else
  {
    v6 = pn.__r_.__value_.__r.__words[0];
  }

  v7 = [v5 stringWithUTF8String:v6];
  v8 = [v4 fileURLWithPath:v7];

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  v9 = MEMORY[0x1E695DFF8];
  v10 = MEMORY[0x1E696AEC0];
  if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    pn = a2->__pn_;
  }

  if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_pn = &pn;
  }

  else
  {
    p_pn = pn.__r_.__value_.__r.__words[0];
  }

  v12 = [v10 stringWithUTF8String:p_pn];
  v13 = [v9 fileURLWithPath:v12];

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  v24 = 0;
  v14 = [SSUCompressionUtils decompressFromCompressedSSUFilePath:v8 outputFileURL:v13 error:&v24];
  v15 = v24;
  if (!v14)
  {
    v17 = v15;
    exception = __cxa_allocate_exception(0x10uLL);
    v19 = exception;
    if (!v17)
    {
      MEMORY[0x1CCA7EB10](exception, "Unable to decompress for some unknown reason");
      __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    [v17 localizedDescription];
    v20 = [objc_claimAutoreleasedReturnValue() UTF8String];
    std::string::basic_string[abi:ne200100]<0>(&v23, v20);
    v21 = std::string::insert(&v23, 0, "Error during decompression: ");
    v22 = *&v21->__r_.__value_.__l.__data_;
    pn.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&pn.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1CCA7EB20](v19, &pn);
    __cxa_throw(v19, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return 1;
}

void sub_1C8B854A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);

    if ((v26 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {

    if (!v26)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  __cxa_free_exception(v24);
  goto LABEL_8;
}

void sub_1C8B856D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

apple::aiml::flatbuffers2::vector_downward *apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(apple::aiml::flatbuffers2::vector_downward *this, uint64_t a2, uint64_t a3)
{
  v5 = this;
  if (a3 || *(this + 80) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 8uLL);
    apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    v6 = *(v5 + 6);
    *(v6 - 8) = a3;
    v6 -= 8;
    *(v5 + 6) = v6;
    v7 = (*(v5 + 8) - v6 + *(v5 + 10));
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

uint64_t sirinluexternal::NLContext::formatText(sirinluexternal::NLContext *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "active_tasks");
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "executed_tasks");
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 32))(v13, a2, "salient_entities");
  }

  v14 = *(this + 10);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "system_dialog_act_group");
  }

  v15 = *(this + 11);
  v16 = *(this + 12);
  while (v15 != v16)
  {
    v17 = *v15++;
    (*(*v17 + 32))(v17, a2, "system_dialog_acts");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::NLContext::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 80);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[1];
  v6 = v3[2];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[4];
  v9 = v3[5];
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[7];
  v12 = v3[8];
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v15 = v3[11];
  v14 = v3[12];
  while (v15 != v14)
  {
    v16 = *v15++;
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  return this;
}

double sirinluexternal::NLContext::NLContext(sirinluexternal::NLContext *this)
{
  *this = &unk_1F48783D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  return result;
}

{
  *this = &unk_1F48783D0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  return result;
}

const sirinluexternal::NLContext *sirinluexternal::NLContext::operator=(const sirinluexternal::NLContext *a1, const sirinluexternal::NLContext *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::NLContext::NLContext(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::NLContext::~NLContext(v5);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::NLContext *a2, sirinluexternal::NLContext *a3)
{
  v3 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v3;
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
  v8 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v12;
  v13 = this[11];
  this[11] = *(a2 + 11);
  *(a2 + 11) = v13;
  v14 = this[12];
  this[12] = *(a2 + 12);
  *(a2 + 12) = v14;
  v15 = this[13];
  this[13] = *(a2 + 13);
  *(a2 + 13) = v15;
  return this;
}

uint64_t sirinluexternal::NLContext::NLContext(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48783D0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v5 = *(a2 + 80);
  *(a2 + 80) = 0;
  v6 = *(a1 + 80);
  *(a1 + 80) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 32));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 56));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 88));
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  return a1;
}

void *sirinluexternal::NLContext::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::NLContext::NLContext(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::NLContext::~NLContext(v5);
  }

  return a1;
}

BOOL sirinluexternal::NLContext::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v5 = *(a2 + 80);
  if (v4)
  {
    if (!v5 || (sirinluexternal::SystemDialogActGroup::operator==(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!PB::PtrVector<sirinluexternal::Task>::operator==(a1 + 8, *(a2 + 8), *(a2 + 16)) || !PB::PtrVector<sirinluexternal::Task>::operator==(a1 + 32, *(a2 + 32), *(a2 + 40)) || !PB::PtrVector<sirinluexternal::EntityCandidate>::operator==((a1 + 56), *(a2 + 56), *(a2 + 64)))
  {
    return 0;
  }

  v6 = *(a2 + 88);
  v7 = *(a2 + 96);

  return PB::PtrVector<sirinluexternal::SystemDialogAct>::operator==(a1 + 88, v6, v7);
}

BOOL PB::PtrVector<sirinluexternal::Task>::operator==(uint64_t a1, void **a2, uint64_t a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if ((v3 - *a1) != (a3 - a2))
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v5 = a2;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v5++;
    result = sirinluexternal::Task::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

unint64_t sirinluexternal::NLContext::hash_value(sirinluexternal::NLContext *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    v3 = sirinluexternal::SystemDialogActGroup::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  v5 = *(this + 2);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= sirinluexternal::Task::hash_value(v7);
    }

    while (v4 != v5);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *v8++;
      v10 ^= sirinluexternal::Task::hash_value(v11);
    }

    while (v8 != v9);
  }

  v12 = *(this + 7);
  v13 = *(this + 8);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12++;
      v14 ^= sirinluexternal::EntityCandidate::hash_value(v15);
    }

    while (v12 != v13);
  }

  v17 = *(this + 11);
  v16 = *(this + 12);
  if (v17 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *v17++;
      v18 ^= sirinluexternal::SystemDialogAct::hash_value(v19);
    }

    while (v17 != v16);
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ v18;
}

uint64_t sirinluexternal::NLContext::makeSystemDialogActGroup(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalssu::SSURequest::formatText(sirinluinternalssu::SSURequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "asr_id");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 3);
  v7 = *(this + 4);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "matching_spans");
  }

  v9 = *(this + 6);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "nlu_request_id");
  }

  v10 = *(this + 7);
  v11 = *(this + 8);
  while (v10 != v11)
  {
    v12 = *v10++;
    (*(*v12 + 32))(v12, a2, "salient_entities");
  }

  if (*(this + 10))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluinternalssu::SSURequest::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  if (this[10])
  {
    this = PB::Writer::write();
  }

  if (v3[2])
  {
    this = PB::Writer::write();
  }

  v4 = v3[1];
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[3];
  v6 = v3[4];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[7];
  v9 = v3[8];
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[6];
  if (v11)
  {

    return PB::Writer::writeSubmessage(a2, v11);
  }

  return this;
}

uint64_t sirinluinternalssu::SSURequest::readFrom(sirinluinternalssu::SSURequest *this, PB::Reader *a2)
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
        goto LABEL_37;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 3)
      {
        switch(v21)
        {
          case 4:
            PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
          case 5:
            PB::PtrVector<sirinluexternal::EntityCandidate>::emplace_back<>();
          case 6:
            operator new();
        }
      }

      else
      {
        switch(v21)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
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
        goto LABEL_37;
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

LABEL_37:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluinternalssu::SSURequest::~SSURequest(sirinluinternalssu::SSURequest *this)
{
  sirinluinternalssu::SSURequest::~SSURequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878420;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v6 = (this + 56);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v6 = (this + 24);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

double sirinluinternalssu::SSURequest::SSURequest(sirinluinternalssu::SSURequest *this)
{
  *this = &unk_1F4878420;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

{
  *this = &unk_1F4878420;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

uint64_t sirinluinternalssu::SSURequest::SSURequest(uint64_t this, const sirinluinternalssu::SSURequest *a2)
{
  *this = &unk_1F4878420;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  if (*(a2 + 10))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 3);
  if (v2 != *(a2 + 4))
  {
    v3 = *v2;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  v4 = *(a2 + 7);
  if (v4 != *(a2 + 8))
  {
    v5 = *v4;
    PB::PtrVector<sirinluexternal::EntityCandidate>::emplace_back<sirinluexternal::EntityCandidate const&>();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalssu::SSURequest::operator=(uint64_t a1, const sirinluinternalssu::SSURequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalssu::SSURequest::SSURequest(v11, a2);
    v3 = v13;
    v4 = *(a1 + 8);
    *(a1 + 8) = v12;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v12 = v4;
    v13 = v5;
    v6 = v16;
    v7 = *(a1 + 56);
    *(a1 + 56) = v15;
    v8 = *(a1 + 72);
    *(a1 + 72) = v6;
    v15 = v7;
    v16 = v8;
    v9 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v9;
    sirinluinternalssu::SSURequest::~SSURequest(v11);
  }

  return a1;
}

void *sirinluinternalssu::swap(void *this, sirinluinternalssu::SSURequest *a2, sirinluinternalssu::SSURequest *a3)
{
  v3 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v12;
  return this;
}

uint64_t sirinluinternalssu::SSURequest::SSURequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878420;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  v5 = (a1 + 24);
  *(a1 + 56) = 0u;
  v6 = (a1 + 56);
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  v7 = *(a2 + 80);
  *(a2 + 80) = 0;
  v8 = *(a1 + 80);
  *(a1 + 80) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  v9 = *(a2 + 16);
  *(a2 + 16) = 0;
  v10 = *(a1 + 16);
  *(a1 + 16) = v9;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  v11 = *(a2 + 8);
  *(a2 + 8) = 0;
  v12 = *v4;
  *v4 = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v6);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v13 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v14 = *(a1 + 48);
  *(a1 + 48) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  return a1;
}

uint64_t sirinluinternalssu::SSURequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalssu::SSURequest::SSURequest(v11, a2);
    v3 = v13;
    v4 = *(a1 + 8);
    *(a1 + 8) = v12;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v12 = v4;
    v13 = v5;
    v6 = v16;
    v7 = *(a1 + 56);
    *(a1 + 56) = v15;
    v8 = *(a1 + 72);
    *(a1 + 72) = v6;
    v15 = v7;
    v16 = v8;
    v9 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v9;
    sirinluinternalssu::SSURequest::~SSURequest(v11);
  }

  return a1;
}

BOOL sirinluinternalssu::SSURequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 80);
  v5 = *(a2 + 80);
  if (v4)
  {
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

    v10 = v6 >= 0 ? *(a1 + 80) : *v4;
    v11 = v9 >= 0 ? *(a2 + 80) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 16);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

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

    if (v16 != v17)
    {
      return 0;
    }

    v19 = v15 >= 0 ? *(a1 + 16) : *v13;
    v20 = v18 >= 0 ? *(a2 + 16) : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v21 = *(a1 + 8);
  v22 = *(a2 + 8);
  if (!v21)
  {
    if (!v22)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (!v22 || !sirinluexternal::UUID::operator==(v21, v22))
  {
    return 0;
  }

LABEL_42:
  result = PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 24), *(a2 + 24), *(a2 + 32));
  if (result)
  {
    result = PB::PtrVector<sirinluexternal::EntityCandidate>::operator==((a1 + 56), *(a2 + 56), *(a2 + 64));
    if (result)
    {
      v23 = *(a1 + 48);
      v24 = *(a2 + 48);
      result = (v23 | v24) == 0;
      if (v23)
      {
        if (v24)
        {
          v25 = *(a1 + 48);

          return sirinluexternal::RequestID::operator==(v25, v24);
        }
      }
    }
  }

  return result;
}

unint64_t sirinluinternalssu::SSURequest::hash_value(sirinluinternalssu::SSURequest *this)
{
  v2 = *(this + 10);
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
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 1);
  if (!v6)
  {
    v10 = 0;
    goto LABEL_17;
  }

  if ((*(v6 + 28) & 1) == 0)
  {
    v7 = 0;
    if ((*(v6 + 28) & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v8 = 0;
    if ((*(v6 + 28) & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v7 = *(v6 + 8);
  if ((*(v6 + 28) & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v8 = *(v6 + 16);
  if ((*(v6 + 28) & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v9 = *(v6 + 24);
LABEL_16:
  v10 = v8 ^ v7 ^ v9;
LABEL_17:
  v11 = *(this + 3);
  v12 = *(this + 4);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v11++;
      v13 ^= sirinluinternal::MatchingSpan::hash_value(v14);
    }

    while (v11 != v12);
  }

  v15 = *(this + 7);
  v16 = *(this + 8);
  if (v15 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = *v15++;
      v17 ^= sirinluexternal::EntityCandidate::hash_value(v18);
    }

    while (v15 != v16);
  }

  v19 = *(this + 6);
  if (v19)
  {
    v19 = sirinluexternal::RequestID::hash_value(v19);
  }

  return v5 ^ v3 ^ v10 ^ v13 ^ v19 ^ v17;
}

uint64_t sirinluinternalssu::SSURequest::makeAsrId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalssu::SSURequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserStatedTask::formatText(sirinluexternal::UserStatedTask *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "task");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UserStatedTask::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return PB::Writer::writeSubmessage(a2, v2);
  }

  return this;
}

uint64_t sirinluexternal::UserStatedTask::readFrom(sirinluexternal::UserStatedTask *this, PB::Reader *a2)
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

void sirinluexternal::UserStatedTask::~UserStatedTask(sirinluexternal::UserStatedTask *this)
{
  sirinluexternal::UserStatedTask::~UserStatedTask(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4878470;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::UserStatedTask::UserStatedTask(void *this)
{
  *this = &unk_1F4878470;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4878470;
  this[1] = 0;
  return this;
}

void *sirinluexternal::UserStatedTask::UserStatedTask(void *this, const sirinluexternal::UserStatedTask *a2)
{
  *this = &unk_1F4878470;
  this[1] = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternal::UserStatedTask *sirinluexternal::UserStatedTask::operator=(const sirinluexternal::UserStatedTask *a1, const sirinluexternal::UserStatedTask *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserStatedTask::UserStatedTask(&v5, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v6;
    v6 = v3;
    sirinluexternal::UserStatedTask::~UserStatedTask(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UserStatedTask *a2, sirinluexternal::UserStatedTask *a3)
{
  v3 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v3;
  return this;
}

void *sirinluexternal::UserStatedTask::UserStatedTask(void *a1, uint64_t a2)
{
  *a1 = &unk_1F4878470;
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
  *a1 = &unk_1F4878470;
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

uint64_t sirinluexternal::UserStatedTask::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = *(a2 + 8);
    *(a2 + 8) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[0] = &unk_1F4878470;
    v6[1] = v4;
    sirinluexternal::UserStatedTask::~UserStatedTask(v6);
  }

  return a1;
}

BOOL sirinluexternal::UserStatedTask::operator==(uint64_t a1, uint64_t a2)
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
    return sirinluexternal::UsoGraph::operator==(v2, v3);
  }
}

sirinluexternal::UsoGraph *sirinluexternal::UserStatedTask::hash_value(sirinluexternal::UserStatedTask *this)
{
  result = *(this + 1);
  if (result)
  {
    return sirinluexternal::UsoGraph::hash_value(result);
  }

  return result;
}

uint64_t sirinluexternal::UserStatedTask::makeTask(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALNLV4_PARSERNLv4ParserRequestReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            objc_storeStrong((a1 + 40), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
            {
LABEL_62:

              return 0;
            }

            goto LABEL_54;
          case 2:
            v14 = objc_alloc_init(SIRINLUINTERNALNLV4_PARSERTokenisation);
            objc_storeStrong((a1 + 48), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLV4_PARSERTokenisationReadFrom(v14, a2))
            {
              goto LABEL_62;
            }

            goto LABEL_54;
          case 3:
            v14 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
            objc_storeStrong((a1 + 16), v14);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(v14, a2))
            {
              goto LABEL_62;
            }

            goto LABEL_54;
        }
      }

      else if (v13 > 5)
      {
        if (v13 == 6)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          *(a1 + 64) |= 1u;
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
              goto LABEL_60;
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

LABEL_60:
          *(a1 + 8) = v21;
          goto LABEL_55;
        }

        if (v13 == 7)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
          objc_storeStrong((a1 + 32), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

          goto LABEL_54;
        }
      }

      else
      {
        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUINTERNALMatchingSpan);
          [a1 addMatchingSpans:v14];
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALMatchingSpanReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

          goto LABEL_54;
        }

        if (v13 == 5)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
          objc_storeStrong((a1 + 56), v14);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnInputReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

LABEL_54:
          PBReaderRecallMark();

          goto LABEL_55;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_55:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternalnlu_router::NLRouterTurnContext::formatText(sirinluexternalnlu_router::NLRouterTurnContext *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "active_tasks");
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "executed_tasks");
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 32))(v13, a2, "salient_entities");
  }

  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    (*(*v16 + 32))(v16, a2, "system_dialog_acts");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::NLRouterTurnContext::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[4];
  v8 = v3[5];
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = v3[10];
  v11 = v3[11];
  while (v10 != v11)
  {
    v12 = *v10++;
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v14 = v3[7];
  v13 = v3[8];
  while (v14 != v13)
  {
    v15 = *v14++;
    this = PB::Writer::writeSubmessage(a2, v15);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterTurnContext::readFrom(sirinluexternalnlu_router::NLRouterTurnContext *this, PB::Reader *a2)
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
          PB::PtrVector<sirinluexternal::SystemDialogAct>::emplace_back<>();
        }

        if (v21 == 4)
        {
          PB::PtrVector<sirinluexternal::EntityCandidate>::emplace_back<>();
        }
      }

      else
      {
        if (v21 == 1)
        {
          PB::PtrVector<sirinluexternal::Task>::emplace_back<>();
        }

        if (v21 == 2)
        {
          PB::PtrVector<sirinluexternal::Task>::emplace_back<>();
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

void sirinluexternalnlu_router::NLRouterTurnContext::~NLRouterTurnContext(sirinluexternalnlu_router::NLRouterTurnContext *this)
{
  sirinluexternalnlu_router::NLRouterTurnContext::~NLRouterTurnContext(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48784C0;
  v2 = (this + 8);
  v3 = (this + 80);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 56);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 32);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = v2;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);

  PB::Base::~Base(this);
}

double sirinluexternalnlu_router::NLRouterTurnContext::NLRouterTurnContext(sirinluexternalnlu_router::NLRouterTurnContext *this)
{
  *this = &unk_1F48784C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

{
  *this = &unk_1F48784C0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  return result;
}

uint64_t sirinluexternalnlu_router::NLRouterTurnContext::NLRouterTurnContext(uint64_t this, const sirinluexternalnlu_router::NLRouterTurnContext *a2)
{
  *this = &unk_1F48784C0;
  *(this + 8) = 0u;
  *(this + 56) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::Task>::emplace_back<sirinluexternal::Task const&>();
  }

  v4 = *(a2 + 4);
  if (v4 != *(a2 + 5))
  {
    v5 = *v4;
    PB::PtrVector<sirinluexternal::Task>::emplace_back<sirinluexternal::Task const&>();
  }

  v6 = *(a2 + 10);
  if (v6 != *(a2 + 11))
  {
    v7 = *v6;
    PB::PtrVector<sirinluexternal::SystemDialogAct>::emplace_back<sirinluexternal::SystemDialogAct const&>();
  }

  v8 = *(a2 + 7);
  if (v8 != *(a2 + 8))
  {
    v9 = *v8;
    PB::PtrVector<sirinluexternal::EntityCandidate>::emplace_back<sirinluexternal::EntityCandidate const&>();
  }

  return this;
}

const sirinluexternalnlu_router::NLRouterTurnContext *sirinluexternalnlu_router::NLRouterTurnContext::operator=(const sirinluexternalnlu_router::NLRouterTurnContext *a1, const sirinluexternalnlu_router::NLRouterTurnContext *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterTurnContext::NLRouterTurnContext(v5, a2);
    sirinluexternalnlu_router::swap(a1, v5, v3);
    sirinluexternalnlu_router::NLRouterTurnContext::~NLRouterTurnContext(v5);
  }

  return a1;
}

void *sirinluexternalnlu_router::swap(void *this, sirinluexternalnlu_router::NLRouterTurnContext *a2, sirinluexternalnlu_router::NLRouterTurnContext *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v7;
  v8 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v9;
  v10 = this[11];
  this[11] = *(a2 + 11);
  *(a2 + 11) = v10;
  v11 = this[12];
  this[12] = *(a2 + 12);
  *(a2 + 12) = v11;
  v12 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v14;
  return this;
}

uint64_t sirinluexternalnlu_router::NLRouterTurnContext::NLRouterTurnContext(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48784C0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  v4 = (a1 + 56);
  *(a1 + 8) = 0u;
  v5 = (a1 + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 8));
  *v5 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 32));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 80));
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *v4 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return a1;
}

void *sirinluexternalnlu_router::NLRouterTurnContext::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::NLRouterTurnContext::NLRouterTurnContext(v5, a2);
    sirinluexternalnlu_router::swap(a1, v5, v3);
    sirinluexternalnlu_router::NLRouterTurnContext::~NLRouterTurnContext(v5);
  }

  return a1;
}

BOOL sirinluexternalnlu_router::NLRouterTurnContext::operator==(uint64_t a1, uint64_t a2)
{
  if (!PB::PtrVector<sirinluexternal::Task>::operator==(a1 + 8, *(a2 + 8), *(a2 + 16)) || !PB::PtrVector<sirinluexternal::Task>::operator==(a1 + 32, *(a2 + 32), *(a2 + 40)) || !PB::PtrVector<sirinluexternal::SystemDialogAct>::operator==(a1 + 80, *(a2 + 80), *(a2 + 88)))
  {
    return 0;
  }

  v4 = *(a2 + 56);
  v5 = *(a2 + 64);

  return PB::PtrVector<sirinluexternal::EntityCandidate>::operator==((a1 + 56), v4, v5);
}

uint64_t sirinluexternalnlu_router::NLRouterTurnContext::hash_value(sirinluexternalnlu_router::NLRouterTurnContext *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 ^= sirinluexternal::Task::hash_value(v5);
    }

    while (v2 != v3);
  }

  v6 = *(this + 4);
  v7 = *(this + 5);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6++;
      v8 ^= sirinluexternal::Task::hash_value(v9);
    }

    while (v6 != v7);
  }

  v10 = *(this + 10);
  v11 = *(this + 11);
  if (v10 == v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v10++;
      v12 ^= sirinluexternal::SystemDialogAct::hash_value(v13);
    }

    while (v10 != v11);
  }

  v15 = *(this + 7);
  v14 = *(this + 8);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = *v15++;
      v16 ^= sirinluexternal::EntityCandidate::hash_value(v17);
    }

    while (v15 != v14);
  }

  return v8 ^ v4 ^ v12 ^ v16;
}

uint64_t sirinluexternal::UserDialogAct::formatText(sirinluexternal::UserDialogAct *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "accepted");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "acknowledged");
  }

  v7 = *(this + 3);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "alignment");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "cancelled");
  }

  v9 = *(this + 5);
  if (v9)
  {
    (*(*v9 + 32))(v9, a2, "delegated");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "rejected");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "user_stated_task");
  }

  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "wanted_to_pause");
  }

  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "wanted_to_proceed");
  }

  v14 = *(this + 10);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "wanted_to_repeat");
  }

  v15 = *(this + 11);
  if (v15)
  {
    (*(*v15 + 32))(v15, a2, "wanted_to_undo");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UserDialogAct::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[6];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[4];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[10];
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[2];
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = v3[9];
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = v3[8];
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[5];
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = v3[7];
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = v3[11];
  if (v13)
  {
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = v3[3];
  if (v14)
  {

    return PB::Writer::writeSubmessage(a2, v14);
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::readFrom(sirinluexternal::UserDialogAct *this, PB::Reader *a2)
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
        goto LABEL_49;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) <= 8)
      {
        if (v21 <= 5)
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
          switch(v21)
          {
            case 6:
              operator new();
            case 7:
              operator new();
            case 8:
              operator new();
          }
        }
      }

      else if (v21 > 12)
      {
        switch(v21)
        {
          case 0xD:
            operator new();
          case 0xE:
            operator new();
          case 0x65:
            operator new();
        }
      }

      else
      {
        switch(v21)
        {
          case 9:
            operator new();
          case 0xA:
            operator new();
          case 0xC:
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
        goto LABEL_49;
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

LABEL_49:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternal::UserDialogAct::~UserDialogAct(sirinluexternal::UserDialogAct *this)
{
  sirinluexternal::UserDialogAct::~UserDialogAct(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878510;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 3);
  *(this + 3) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 2);
  *(this + 2) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 1);
  *(this + 1) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::UserDialogAct::UserDialogAct(sirinluexternal::UserDialogAct *this)
{
  *this = &unk_1F4878510;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4878510;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

uint64_t sirinluexternal::UserDialogAct::UserDialogAct(uint64_t this, const sirinluexternal::UserDialogAct *a2)
{
  *this = &unk_1F4878510;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::operator=(uint64_t a1, const sirinluexternal::UserDialogAct *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserDialogAct::UserDialogAct(&v10, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v3;
    v4 = *(a1 + 72);
    *(a1 + 72) = v15;
    v15 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v6;
    v7 = *(a1 + 88);
    *(a1 + 88) = v16;
    v16 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v8;
    sirinluexternal::UserDialogAct::~UserDialogAct(&v10);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::UserDialogAct *a2, sirinluexternal::UserDialogAct *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v6;
  v7 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v8;
  v9 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = this[11];
  this[11] = *(a2 + 11);
  *(a2 + 11) = v12;
  v13 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v13;
  return this;
}

uint64_t sirinluexternal::UserDialogAct::UserDialogAct(uint64_t a1, void *a2)
{
  *a1 = &unk_1F4878510;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v4 = a2[1];
  a2[1] = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a2[6];
  a2[6] = 0;
  v7 = *(a1 + 48);
  *(a1 + 48) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = a2[4];
  a2[4] = 0;
  v9 = *(a1 + 32);
  *(a1 + 32) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = a2[10];
  a2[10] = 0;
  v11 = *(a1 + 80);
  *(a1 + 80) = v10;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = a2[2];
  a2[2] = 0;
  v13 = *(a1 + 16);
  *(a1 + 16) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = a2[9];
  a2[9] = 0;
  v15 = *(a1 + 72);
  *(a1 + 72) = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = a2[8];
  a2[8] = 0;
  v17 = *(a1 + 64);
  *(a1 + 64) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  v18 = a2[5];
  a2[5] = 0;
  v19 = *(a1 + 40);
  *(a1 + 40) = v18;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  v20 = a2[7];
  a2[7] = 0;
  v21 = *(a1 + 56);
  *(a1 + 56) = v20;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = a2[11];
  a2[11] = 0;
  v23 = *(a1 + 88);
  *(a1 + 88) = v22;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = a2[3];
  a2[3] = 0;
  v25 = *(a1 + 24);
  *(a1 + 24) = v24;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  return a1;
}

uint64_t sirinluexternal::UserDialogAct::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserDialogAct::UserDialogAct(&v10, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v3;
    v4 = *(a1 + 72);
    *(a1 + 72) = v15;
    v15 = v4;
    v5 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v6;
    v7 = *(a1 + 88);
    *(a1 + 88) = v16;
    v16 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v8;
    sirinluexternal::UserDialogAct::~UserDialogAct(&v10);
  }

  return a1;
}

BOOL sirinluexternal::UserDialogAct::operator==(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5 || !sirinluexternal::UserAccepted::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];
  if (v6)
  {
    if (!v7 || !sirinluexternal::UserRejected::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[4];
  v9 = a2[4];
  if (v8)
  {
    if (!v9 || !sirinluexternal::UserCancelled::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[10];
  v11 = a2[10];
  if (v10)
  {
    if (!v11 || !sirinluexternal::UserWantedToRepeat::operator==(v10, v11))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[2];
  v13 = a2[2];
  if (v12)
  {
    if (!v13 || !sirinluexternal::UserAcknowledged::operator==(v12, v13))
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[9];
  v15 = a2[9];
  if (v14)
  {
    if (!v15 || !sirinluexternal::UserWantedToProceed::operator==(v14, v15))
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  v16 = a1[8];
  v17 = a2[8];
  if (v16)
  {
    if (!v17 || !sirinluexternal::UserWantedToPause::operator==(v16, v17))
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v18 = a1[5];
  v19 = a2[5];
  if (v18)
  {
    if (!v19 || !sirinluexternal::DelegatedUserDialogAct::operator==(v18, v19))
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v20 = a1[7];
  v21 = a2[7];
  if (v20)
  {
    if (!v21 || !sirinluexternal::UserStatedTask::operator==(v20, v21))
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  v22 = a1[11];
  v23 = a2[11];
  if (!v22)
  {
    if (!v23)
    {
      goto LABEL_49;
    }

    return 0;
  }

  if (!v23 || !sirinluexternal::UserWantedToUndo::operator==(v22, v23))
  {
    return 0;
  }

LABEL_49:
  v24 = a1[3];
  v25 = a2[3];
  result = (v24 | v25) == 0;
  if (v24 && v25)
  {
    v27 = a1[3];

    return sirinluexternal::UtteranceAlignment::operator==(v27, v25);
  }

  return result;
}

unint64_t sirinluexternal::UserDialogAct::hash_value(sirinluexternal::UserDialogAct *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v24 = sirinluexternal::UserAccepted::hash_value(v2);
  }

  else
  {
    v24 = 0;
  }

  v3 = *(this + 6);
  if (v3)
  {
    v4 = sirinluexternal::UserRejected::hash_value(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 4);
  if (v5)
  {
    v6 = sirinluexternal::UserCancelled::hash_value(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(this + 10);
  if (v7)
  {
    v8 = sirinluexternal::UserWantedToRepeat::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 2);
  if (v9)
  {
    v10 = sirinluexternal::UserAcknowledged::hash_value(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 9);
  if (v11)
  {
    v12 = sirinluexternal::UserWantedToProceed::hash_value(v11);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(this + 8);
  if (v13)
  {
    v14 = sirinluexternal::UserWantedToPause::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 5);
  if (v15)
  {
    v16 = sirinluexternal::DelegatedUserDialogAct::hash_value(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(this + 7);
  if (v17 && (v18 = *(v17 + 8)) != 0)
  {
    v19 = sirinluexternal::UsoGraph::hash_value(v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(this + 11);
  if (v20)
  {
    v21 = sirinluexternal::UserWantedToUndo::hash_value(v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(this + 3);
  if (v22)
  {
    v22 = sirinluexternal::UtteranceAlignment::hash_value(v22);
  }

  return v4 ^ v24 ^ v6 ^ v8 ^ v10 ^ v12 ^ v14 ^ v16 ^ v19 ^ v21 ^ v22;
}

uint64_t sirinluexternal::UserDialogAct::makeAccepted(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeRejected(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeCancelled(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeWantedToRepeat(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeAcknowledged(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeWantedToProceed(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeWantedToPause(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeDelegated(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeUserStatedTask(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeWantedToUndo(uint64_t this)
{
  if (!*(this + 88))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserDialogAct::makeAlignment(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::MatchingSpan::formatText(sirinluinternal::MatchingSpan *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 80))
  {
    v5 = *(this + 18);
    PB::TextFormatter::format(a2, "end_token_index");
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 5);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "internal_span_data");
  }

  if (*(this + 6))
  {
    PB::TextFormatter::format();
  }

  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "matcher_names");
  }

  if (*(this + 7))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 80) & 2) != 0)
  {
    v10 = *(this + 19);
    PB::TextFormatter::format(a2, "start_token_index");
  }

  v11 = *(this + 8);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "uso_graph");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::MatchingSpan::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 48))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 32))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 80);
  if ((v4 & 2) != 0)
  {
    v5 = *(v3 + 76);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 80);
  }

  if (v4)
  {
    v6 = *(v3 + 72);
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = *(v3 + 64);
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeVarInt(a2);
  }

  v11 = *(v3 + 40);
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  if (*(v3 + 56))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluinternal::MatchingSpan::readFrom(sirinluinternal::MatchingSpan *this, PB::Reader *a2)
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
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = (v7 + v2);
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
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v14 += 7;
          ++v16;
          --v18;
          ++v19;
          v40 = v15++ > 8;
          if (v40)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_150;
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
        v40 = v9++ > 8;
        if (v40)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_150;
      }

      v21 = v10 >> 3;
      if ((v10 >> 3) <= 4)
      {
        break;
      }

      if (v21 > 6)
      {
        if (v21 == 7)
        {
          operator new();
        }

        if (v21 == 8)
        {
          operator new();
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_152;
        }

        goto LABEL_146;
      }

      if (v21 == 5)
      {
        operator new();
      }

      if (v21 != 6)
      {
        goto LABEL_17;
      }

      if ((v10 & 7) == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_152:
          v105 = 0;
          return v105 & 1;
        }

        if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
        {
          v22 = *(this + 2);
          while (1)
          {
            v23 = *(this + 3);
            if (v22 >= v23)
            {
              v24 = *(this + 1);
              v25 = v22 - v24;
              v26 = (v22 - v24) >> 2;
              v27 = v26 + 1;
              if ((v26 + 1) >> 62)
              {
                goto LABEL_154;
              }

              v28 = v23 - v24;
              if (v28 >> 1 > v27)
              {
                v27 = v28 >> 1;
              }

              if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v29 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v27;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v29);
              }

              v30 = (v22 - v24) >> 2;
              v31 = (4 * v26);
              v32 = (4 * v26 - 4 * v30);
              *v31 = 0;
              v22 = (v31 + 1);
              memcpy(v32, v24, v25);
              v33 = *(this + 1);
              *(this + 1) = v32;
              *(this + 2) = v22;
              *(this + 3) = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v22 = 0;
              v22 += 4;
            }

            *(this + 2) = v22;
            v35 = *(a2 + 1);
            v34 = *(a2 + 2);
            v36 = *a2;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34;
            if (v40)
            {
              break;
            }

            v44 = (v36 + v35);
            v45 = v35 + 1;
            while (1)
            {
              v42 = v45;
              *(a2 + 1) = v45;
              v46 = *v44++;
              v39 |= (v46 & 0x7F) << v37;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              ++v45;
              v40 = v38++ > 8;
              if (v40)
              {
                goto LABEL_61;
              }
            }

LABEL_64:
            *(v22 - 1) = v39;
            if (v42 >= v34 || (*(a2 + 24) & 1) != 0)
            {
              goto LABEL_89;
            }
          }

          if (v34 <= v35)
          {
            v41 = *(a2 + 1);
          }

          else
          {
            v41 = *(a2 + 2);
          }

          while (v41 != v35)
          {
            v42 = v35 + 1;
            v43 = *(v36 + v35);
            *(a2 + 1) = v42;
            v39 |= (v43 & 0x7F) << v37;
            if ((v43 & 0x80) == 0)
            {
              if (*(a2 + 24))
              {
                LODWORD(v39) = 0;
              }

              goto LABEL_64;
            }

            v37 += 7;
            v35 = v42;
            v40 = v38++ > 8;
            if (v40)
            {
LABEL_61:
              LODWORD(v39) = 0;
              goto LABEL_64;
            }
          }

          *(a2 + 24) = 1;
          *(v22 - 1) = 0;
        }

LABEL_89:
        PB::Reader::recallMark();
      }

      else
      {
        v78 = *(this + 2);
        v77 = *(this + 3);
        if (v78 >= v77)
        {
          v80 = *(this + 1);
          v81 = v78 - v80;
          v82 = (v78 - v80) >> 2;
          v83 = v82 + 1;
          if ((v82 + 1) >> 62)
          {
LABEL_154:
            std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
          }

          v84 = v77 - v80;
          if (v84 >> 1 > v83)
          {
            v83 = v84 >> 1;
          }

          if (v84 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v85 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v85 = v83;
          }

          if (v85)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v85);
          }

          v86 = (v78 - v80) >> 2;
          v87 = (4 * v82);
          v88 = (4 * v82 - 4 * v86);
          *v87 = 0;
          v79 = v87 + 1;
          memcpy(v88, v80, v81);
          v89 = *(this + 1);
          *(this + 1) = v88;
          *(this + 2) = v79;
          *(this + 3) = 0;
          if (v89)
          {
            operator delete(v89);
          }
        }

        else
        {
          *v78 = 0;
          v79 = v78 + 4;
        }

        *(this + 2) = v79;
        v91 = *(a2 + 1);
        v90 = *(a2 + 2);
        v92 = *a2;
        if (v91 > 0xFFFFFFFFFFFFFFF5 || v91 + 10 > v90)
        {
          v99 = 0;
          v100 = 0;
          v95 = 0;
          v101 = (v92 + v91);
          v17 = v90 >= v91;
          v102 = v90 - v91;
          if (!v17)
          {
            v102 = 0;
          }

          v103 = v91 + 1;
          while (1)
          {
            if (!v102)
            {
              LODWORD(v95) = 0;
              *(a2 + 24) = 1;
              goto LABEL_145;
            }

            v104 = *v101;
            *(a2 + 1) = v103;
            v95 |= (v104 & 0x7F) << v99;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v99 += 7;
            ++v101;
            --v102;
            ++v103;
            v40 = v100++ > 8;
            if (v40)
            {
LABEL_141:
              LODWORD(v95) = 0;
              goto LABEL_145;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v95) = 0;
          }
        }

        else
        {
          v93 = 0;
          v94 = 0;
          v95 = 0;
          v96 = (v92 + v91);
          v97 = v91 + 1;
          while (1)
          {
            *(a2 + 1) = v97;
            v98 = *v96++;
            v95 |= (v98 & 0x7F) << v93;
            if ((v98 & 0x80) == 0)
            {
              break;
            }

            v93 += 7;
            ++v97;
            v40 = v94++ > 8;
            if (v40)
            {
              goto LABEL_141;
            }
          }
        }

LABEL_145:
        *(v79 - 1) = v95;
      }

LABEL_146:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_150;
      }
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        *(this + 80) |= 2u;
        v57 = *(a2 + 1);
        v56 = *(a2 + 2);
        v58 = *a2;
        if (v57 > 0xFFFFFFFFFFFFFFF5 || v57 + 10 > v56)
        {
          v65 = 0;
          v66 = 0;
          v61 = 0;
          v67 = (v58 + v57);
          v17 = v56 >= v57;
          v68 = v56 - v57;
          if (!v17)
          {
            v68 = 0;
          }

          v69 = v57 + 1;
          while (1)
          {
            if (!v68)
            {
              LODWORD(v61) = 0;
              *(a2 + 24) = 1;
              goto LABEL_121;
            }

            v70 = *v67;
            *(a2 + 1) = v69;
            v61 |= (v70 & 0x7F) << v65;
            if ((v70 & 0x80) == 0)
            {
              break;
            }

            v65 += 7;
            ++v67;
            --v68;
            ++v69;
            v40 = v66++ > 8;
            if (v40)
            {
LABEL_97:
              LODWORD(v61) = 0;
              goto LABEL_121;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v61) = 0;
          }
        }

        else
        {
          v59 = 0;
          v60 = 0;
          v61 = 0;
          v62 = (v58 + v57);
          v63 = v57 + 1;
          while (1)
          {
            *(a2 + 1) = v63;
            v64 = *v62++;
            v61 |= (v64 & 0x7F) << v59;
            if ((v64 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            ++v63;
            v40 = v60++ > 8;
            if (v40)
            {
              goto LABEL_97;
            }
          }
        }

LABEL_121:
        *(this + 19) = v61;
        goto LABEL_146;
      }

      if (v21 == 4)
      {
        *(this + 80) |= 1u;
        v48 = *(a2 + 1);
        v47 = *(a2 + 2);
        v49 = *a2;
        if (v48 > 0xFFFFFFFFFFFFFFF5 || v48 + 10 > v47)
        {
          v71 = 0;
          v72 = 0;
          v52 = 0;
          v73 = (v49 + v48);
          v17 = v47 >= v48;
          v74 = v47 - v48;
          if (!v17)
          {
            v74 = 0;
          }

          v75 = v48 + 1;
          while (1)
          {
            if (!v74)
            {
              LODWORD(v52) = 0;
              *(a2 + 24) = 1;
              goto LABEL_124;
            }

            v76 = *v73;
            *(a2 + 1) = v75;
            v52 |= (v76 & 0x7F) << v71;
            if ((v76 & 0x80) == 0)
            {
              break;
            }

            v71 += 7;
            ++v73;
            --v74;
            ++v75;
            v40 = v72++ > 8;
            if (v40)
            {
LABEL_105:
              LODWORD(v52) = 0;
              goto LABEL_124;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v52) = 0;
          }
        }

        else
        {
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = (v49 + v48);
          v54 = v48 + 1;
          while (1)
          {
            *(a2 + 1) = v54;
            v55 = *v53++;
            v52 |= (v55 & 0x7F) << v50;
            if ((v55 & 0x80) == 0)
            {
              break;
            }

            v50 += 7;
            ++v54;
            v40 = v51++ > 8;
            if (v40)
            {
              goto LABEL_105;
            }
          }
        }

LABEL_124:
        *(this + 18) = v52;
        goto LABEL_146;
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

    goto LABEL_17;
  }

LABEL_150:
  v105 = v4 ^ 1;
  return v105 & 1;
}

sirinluinternal::MatchingSpan *sirinluinternal::MatchingSpan::MatchingSpan(sirinluinternal::MatchingSpan *this, const sirinluinternal::MatchingSpan *a2)
{
  *(this + 8) = 0u;
  v4 = (this + 8);
  *this = &unk_1F4878560;
  *(this + 20) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  v5 = *(a2 + 80);
  if ((v5 & 2) != 0)
  {
    v6 = *(a2 + 19);
    *(this + 80) |= 2u;
    *(this + 19) = v6;
    v5 = *(a2 + 80);
  }

  if (v5)
  {
    v7 = *(a2 + 18);
    *(this + 80) |= 1u;
    *(this + 18) = v7;
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (this != a2)
  {
    v8 = *(a2 + 1);
    v9 = *(a2 + 2);
    v10 = v9 - v8;
    v11 = *(this + 3);
    v12 = *(this + 1);
    if (v11 - v12 < (v9 - v8))
    {
      v13 = v10 >> 2;
      if (v12)
      {
        *(this + 2) = v12;
        operator delete(v12);
        v11 = 0;
        *v4 = 0;
        v4[1] = 0;
        v4[2] = 0;
      }

      if (!(v13 >> 62))
      {
        v14 = v11 >> 1;
        if (v11 >> 1 <= v13)
        {
          v14 = v10 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (!(v15 >> 62))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v15);
        }
      }

      std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
    }

    v16 = *(this + 2);
    v17 = v16 - v12;
    if (v16 - v12 >= v10)
    {
      if (v9 != v8)
      {
        memmove(v12, v8, v9 - v8);
      }

      v19 = &v12[v10];
    }

    else
    {
      v18 = &v8[v17];
      if (v16 != v12)
      {
        memmove(*(this + 1), *(a2 + 1), v17);
        v16 = *(this + 2);
      }

      if (v9 != v18)
      {
        memmove(v16, v18, v9 - v18);
      }

      v19 = &v16[v9 - v18];
    }

    *(this + 2) = v19;
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::MatchingSpan::operator=(uint64_t a1, const sirinluinternal::MatchingSpan *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::MatchingSpan::MatchingSpan(v12, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v4;
    v5 = v14;
    v6 = *(a1 + 8);
    *(a1 + 8) = v13;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v6;
    v14 = v7;
    v8 = v16;
    v9 = *(a1 + 40);
    *(a1 + 40) = v15;
    v10 = *(a1 + 56);
    *(a1 + 56) = v8;
    v15 = v9;
    v16 = v10;
    sirinluinternal::MatchingSpan::~MatchingSpan(v12);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::MatchingSpan *a2, sirinluinternal::MatchingSpan *a3)
{
  v3 = *(this + 80);
  *(this + 80) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v5;
  LODWORD(v5) = *(this + 76);
  *(this + 76) = *(a2 + 19);
  *(a2 + 19) = v5;
  LODWORD(v5) = *(this + 72);
  *(this + 72) = *(a2 + 18);
  *(a2 + 18) = v5;
  v6 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v6;
  v7 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v9;
  v10 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v11;
  return this;
}

uint64_t sirinluinternal::MatchingSpan::MatchingSpan(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878560;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 32);
  *(a2 + 32) = 0;
  v8 = *(a1 + 32);
  *(a1 + 32) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  *(a1 + 76) = *(a2 + 76);
  *(a1 + 72) = *(a2 + 72);
  v9 = *(a2 + 64);
  *(a2 + 64) = 0;
  v10 = *(a1 + 64);
  *(a1 + 64) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *v4;
  if (*v4)
  {
    *(a1 + 16) = v11;
    operator delete(v11);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v12 = *(a2 + 40);
  *(a2 + 40) = 0;
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  v14 = *(a2 + 56);
  *(a2 + 56) = 0;
  v15 = *(a1 + 56);
  *(a1 + 56) = v14;
  if (v15)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v15);
  }

  return a1;
}

uint64_t sirinluinternal::MatchingSpan::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::MatchingSpan::MatchingSpan(v12, a2);
    v3 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v3;
    v4 = *(a1 + 72);
    *(a1 + 72) = v17;
    v17 = v4;
    v5 = v14;
    v6 = *(a1 + 8);
    *(a1 + 8) = v13;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v13 = v6;
    v14 = v7;
    v8 = v16;
    v9 = *(a1 + 40);
    *(a1 + 40) = v15;
    v10 = *(a1 + 56);
    *(a1 + 56) = v8;
    v15 = v9;
    v16 = v10;
    sirinluinternal::MatchingSpan::~MatchingSpan(v12);
  }

  return a1;
}

BOOL sirinluinternal::MatchingSpan::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4)
  {
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

    v10 = v6 >= 0 ? *(a1 + 48) : *v4;
    v11 = v9 >= 0 ? *(a2 + 48) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 32);
  v14 = *(a2 + 32);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

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

    if (v16 != v17)
    {
      return 0;
    }

    v19 = v15 >= 0 ? *(a1 + 32) : *v13;
    v20 = v18 >= 0 ? *(a2 + 32) : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v21 = *(a2 + 80);
  if ((*(a1 + 80) & 2) != 0)
  {
    if ((*(a2 + 80) & 2) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 80) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 80))
  {
    if ((*(a2 + 80) & 1) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if (*(a2 + 80))
  {
    return 0;
  }

  v22 = *(a1 + 64);
  v23 = *(a2 + 64);
  if (v22)
  {
    if (!v23 || !sirinluexternal::UsoGraph::operator==(v22, v23))
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v25 = *(a1 + 8);
  v24 = *(a1 + 16);
  v26 = *(a2 + 8);
  if (v24 - v25 != *(a2 + 16) - v26)
  {
    return 0;
  }

  while (v25 != v24)
  {
    if (*v25 != *v26)
    {
      return 0;
    }

    v25 += 4;
    ++v26;
  }

  v27 = *(a1 + 40);
  v28 = *(a2 + 40);
  if (!v27)
  {
    if (!v28)
    {
      goto LABEL_61;
    }

    return 0;
  }

  if (!v28 || !sirinluinternal::InternalSpanData::operator==(v27, v28))
  {
    return 0;
  }

LABEL_61:
  v29 = *(a1 + 56);
  v30 = *(a2 + 56);
  result = (v29 | v30) == 0;
  if (v29 && v30)
  {
    v31 = *(a1 + 56);

    return std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v31, v30);
  }

  return result;
}

unint64_t sirinluinternal::MatchingSpan::hash_value(sirinluinternal::MatchingSpan *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 4);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  if ((*(this + 80) & 2) != 0)
  {
    v6 = *(this + 19);
    if (*(this + 80))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if (*(this + 80))
    {
LABEL_9:
      v7 = *(this + 18);
      goto LABEL_12;
    }
  }

  v7 = 0;
LABEL_12:
  v8 = *(this + 8);
  if (v8)
  {
    v9 = sirinluexternal::UsoGraph::hash_value(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(this + 1);
  v11 = *(this + 2);
  v12 = PBHashBytes();
  v13 = *(this + 5);
  if (v13)
  {
    v14 = sirinluinternal::InternalSpanData::hash_value(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(this + 7);
  if (v15)
  {
    v15 = std::__string_hash<char>::operator()[abi:ne200100](v15);
  }

  return v5 ^ v3 ^ v6 ^ v7 ^ v9 ^ v14 ^ v15 ^ v12;
}

uint64_t sirinluinternal::MatchingSpan::makeUsoGraph(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::MatchingSpan::makeInternalSpanData(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

void sub_1C8B8DAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1C8B8DF80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SIRINLUINTERNALQUERYREWRITEQRRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v16 = PBReaderReadString();
            v14 = *(a1 + 48);
            *(a1 + 48) = v16;
            goto LABEL_41;
          case 5:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            v15 = 24;
            goto LABEL_38;
          case 6:
            v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
            objc_storeStrong((a1 + 8), v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
            {
LABEL_44:

              return 0;
            }

LABEL_40:
            PBReaderRecallMark();
LABEL_41:

            goto LABEL_42;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
            v15 = 40;
LABEL_38:
            objc_storeStrong((a1 + v15), v14);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

            goto LABEL_40;
          case 2:
            v14 = objc_alloc_init(SIRINLUINTERNALQUERYREWRITEQRInteraction);
            [a1 addInteractions:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALQUERYREWRITEQRInteractionReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

            goto LABEL_40;
          case 3:
            v14 = objc_alloc_init(SIRINLUINTERNALRewriteInteraction);
            [a1 addOriginalInteractions:v14];
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALRewriteInteractionReadFrom(v14, a2))
            {
              goto LABEL_44;
            }

            goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEventReadFrom(uint64_t a1, void *a2)
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
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent__eventDescription;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent__protoEncoding;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v15 = &OBJC_IVAR___SIRINLUEXTERNALCDM_PLANNERCDMTranscriptEvent__runtimeEncoding;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATENLv4ContextFeaturizerResponseReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponseReadFrom(v13, a2))
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

uint64_t sirinluexternal::SemVer::formatText(sirinluexternal::SemVer *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 20);
  if (v5)
  {
    v7 = *(this + 2);
    PB::TextFormatter::format(a2, "major_version");
    v5 = *(this + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(this + 3);
  PB::TextFormatter::format(a2, "minor_version");
  if ((*(this + 20) & 4) != 0)
  {
LABEL_4:
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "patch_version");
  }

LABEL_5:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::SemVer::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 20);
  if ((v4 & 1) == 0)
  {
    if ((*(this + 20) & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v3 + 12);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 20) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v5 = *(this + 8);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 20);
  if ((v4 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v4 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v3 + 16);

  return PB::Writer::writeVarInt(a2);
}

uint64_t sirinluexternal::SemVer::readFrom(sirinluexternal::SemVer *this, PB::Reader *a2)
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
          goto LABEL_17;
        }
      }

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_87;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 20) |= 4u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v51 = 0;
          v52 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v39)
            {
              LODWORD(v43) = 0;
              *(a2 + 24) = 1;
              goto LABEL_81;
            }

            v53 = v39 + 1;
            v54 = *(v40 + v39);
            *(a2 + 1) = v53;
            v43 |= (v54 & 0x7F) << v51;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v39 = v53;
            v14 = v52++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              goto LABEL_80;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v43) = 0;
          }

LABEL_80:
          v3 = v53;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = (v40 + v39);
          v45 = v39 + 1;
          while (1)
          {
            v3 = v45;
            *(a2 + 1) = v45;
            v46 = *v44++;
            v43 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              break;
            }
          }
        }

LABEL_81:
        *(this + 4) = v43;
      }

      else if (v22 == 2)
      {
        *(this + 20) |= 2u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v31)
            {
              LODWORD(v35) = 0;
              *(a2 + 24) = 1;
              goto LABEL_77;
            }

            v49 = v31 + 1;
            v50 = *(v32 + v31);
            *(a2 + 1) = v49;
            v35 |= (v50 & 0x7F) << v47;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v31 = v49;
            v14 = v48++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              goto LABEL_76;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v35) = 0;
          }

LABEL_76:
          v3 = v49;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v3 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              LODWORD(v35) = 0;
              break;
            }
          }
        }

LABEL_77:
        *(this + 3) = v35;
      }

      else if (v22 == 1)
      {
        *(this + 20) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v55 = 0;
          v56 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v23)
            {
              LODWORD(v27) = 0;
              *(a2 + 24) = 1;
              goto LABEL_85;
            }

            v57 = v23 + 1;
            v58 = *(v24 + v23);
            *(a2 + 1) = v57;
            v27 |= (v58 & 0x7F) << v55;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v23 = v57;
            v14 = v56++ > 8;
            if (v14)
            {
              LODWORD(v27) = 0;
              goto LABEL_84;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v27) = 0;
          }

LABEL_84:
          v3 = v57;
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
            v3 = v29;
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
              LODWORD(v27) = 0;
              break;
            }
          }
        }

LABEL_85:
        *(this + 2) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v59 = 0;
          return v59 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_87;
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
        goto LABEL_22;
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

LABEL_87:
  v59 = v4 ^ 1;
  return v59 & 1;
}

void sirinluexternal::SemVer::~SemVer(sirinluexternal::SemVer *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluexternal::SemVer::SemVer(uint64_t this)
{
  *this = &unk_1F48785B0;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_1F48785B0;
  *(this + 20) = 0;
  return this;
}

uint64_t sirinluexternal::SemVer::SemVer(uint64_t this, const sirinluexternal::SemVer *a2)
{
  *this = &unk_1F48785B0;
  *(this + 20) = 0;
  v2 = *(a2 + 20);
  if (v2)
  {
    v4 = *(a2 + 2);
    v3 = 1;
    *(this + 20) = 1;
    *(this + 8) = v4;
    v2 = *(a2 + 20);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((*(a2 + 20) & 2) != 0)
  {
LABEL_5:
    v5 = *(a2 + 3);
    v3 |= 2u;
    *(this + 20) = v3;
    *(this + 12) = v5;
    v2 = *(a2 + 20);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = *(a2 + 4);
    *(this + 20) = v3 | 4;
    *(this + 16) = v6;
  }

  return this;
}

uint64_t sirinluexternal::SemVer::operator=(uint64_t a1, const sirinluexternal::SemVer *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SemVer::SemVer(v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    PB::Base::~Base(v5);
  }

  return a1;
}

_DWORD *sirinluexternal::swap(_DWORD *this, sirinluexternal::SemVer *a2, sirinluexternal::SemVer *a3)
{
  v3 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  return this;
}

uint64_t sirinluexternal::SemVer::SemVer(uint64_t result, _DWORD *a2)
{
  *result = &unk_1F48785B0;
  *(result + 20) = a2[5];
  a2[5] = 0;
  *(result + 8) = a2[2];
  *(result + 12) = a2[3];
  *(result + 16) = a2[4];
  return result;
}

{
  *result = &unk_1F48785B0;
  *(result + 20) = a2[5];
  a2[5] = 0;
  *(result + 8) = a2[2];
  *(result + 12) = a2[3];
  *(result + 16) = a2[4];
  return result;
}

uint64_t sirinluexternal::SemVer::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6 = &unk_1F48785B0;
    v3 = *(a2 + 8);
    *(a2 + 20) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7 = v4;
    PB::Base::~Base(&v6);
  }

  return a1;
}

BOOL sirinluexternal::SemVer::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 12) != *(a2 + 12))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 4) == 0;
  if ((*(a1 + 20) & 4) != 0)
  {
    return (*(a2 + 20) & 4) != 0 && *(a1 + 16) == *(a2 + 16);
  }

  return v2;
}

uint64_t sirinluexternal::SemVer::hash_value(sirinluexternal::SemVer *this)
{
  if ((*(this + 20) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v2 = 0;
    if ((*(this + 20) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v3 = 0;
    return v2 ^ v1 ^ v3;
  }

  v1 = *(this + 2);
  if ((*(this + 20) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(this + 3);
  if ((*(this + 20) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v3 = *(this + 4);
  return v2 ^ v1 ^ v3;
}

uint64_t SIRINLUEXTERNALSystemOfferedReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALUserDialogAct);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserDialogActReadFrom(&v13->super.super.isa, a2))
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

uint64_t sirinluinternalsnlp_intermediate::LinearizedTensor::formatText(sirinluinternalsnlp_intermediate::LinearizedTensor *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 7);
  for (i = *(this + 8); v5 != i; v5 += 24)
  {
    PB::TextFormatter::format();
  }

  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "numericalized_feature");
  }

  v10 = *(this + 4);
  v11 = *(this + 5);
  while (v10 != v11)
  {
    v12 = *v10++;
    PB::TextFormatter::format(a2, "shape");
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluinternalsnlp_intermediate::LinearizedTensor::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  v4 = this[4];
  v5 = this[5];
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeVarInt(a2);
  }

  v7 = v3[1];
  v8 = v3[2];
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeVarInt(a2);
  }

  v11 = v3[7];
  v10 = v3[8];
  while (v11 != v10)
  {
    this = PB::Writer::write();
    v11 += 24;
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::LinearizedTensor::readFrom(sirinluinternalsnlp_intermediate::LinearizedTensor *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 56);
    do
    {
      v8 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v11 = 0;
        v17 = (v8 + v2);
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
          v11 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v42 = v16++ > 8;
          if (v42)
          {
            goto LABEL_18;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = (v8 + v2);
      v13 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v13;
        v14 = *v12++;
        v11 |= (v14 & 0x7F) << v9;
        if ((v14 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        ++v13;
        v42 = v10++ > 8;
        if (v42)
        {
          goto LABEL_18;
        }
      }

LABEL_22:
      v22 = v11 & 7;
      if (v22 == 4)
      {
        v4 = 0;
        break;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) == 3)
      {
        v73 = *(this + 8);
        v74 = *(this + 9);
        if (v73 >= v74)
        {
          v79 = 0xAAAAAAAAAAAAAAABLL * ((v73 - *v7) >> 3);
          v80 = v79 + 1;
          if (v79 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
          }

          v81 = 0xAAAAAAAAAAAAAAABLL * ((v74 - *v7) >> 3);
          if (2 * v81 > v80)
          {
            v80 = 2 * v81;
          }

          if (v81 >= 0x555555555555555)
          {
            v82 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v82 = v80;
          }

          v142.__end_cap_.__value_ = v7;
          if (v82)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v82);
          }

          v97 = 24 * v79;
          *v97 = 0;
          *(v97 + 8) = 0;
          *(v97 + 16) = 0;
          v75 = 24 * v79 + 24;
          v98 = *(this + 7);
          v99 = *(this + 8) - v98;
          v100 = 24 * v79 - v99;
          memcpy((v97 - v99), v98, v99);
          v101 = *(this + 7);
          *(this + 7) = v100;
          *(this + 8) = v75;
          v102 = *(this + 9);
          *(this + 9) = 0;
          v142.__end_ = v101;
          v142.__end_cap_.__value_ = v102;
          v142.__first_ = v101;
          v142.__begin_ = v101;
          std::__split_buffer<std::string>::~__split_buffer(&v142);
        }

        else
        {
          *v73 = 0;
          v73[1] = 0;
          v75 = (v73 + 3);
          v73[2] = 0;
        }

        *(this + 8) = v75;
        PB::Reader::read();
        goto LABEL_19;
      }

      if (v23 == 2)
      {
        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
LABEL_179:
            v140 = 0;
            return v140 & 1;
          }

          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v24 = *(this + 2);
            while (1)
            {
              v49 = *(this + 3);
              if (v24 >= v49)
              {
                v50 = *(this + 1);
                v51 = v24 - v50;
                v52 = (v24 - v50) >> 2;
                v53 = v52 + 1;
                if ((v52 + 1) >> 62)
                {
                  goto LABEL_181;
                }

                v54 = v49 - v50;
                if (v54 >> 1 > v53)
                {
                  v53 = v54 >> 1;
                }

                if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v55 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v53;
                }

                if (v55)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v55);
                }

                v56 = (v24 - v50) >> 2;
                v57 = (4 * v52);
                v58 = (4 * v52 - 4 * v56);
                *v57 = 0;
                v24 = (v57 + 1);
                memcpy(v58, v50, v51);
                v59 = *(this + 1);
                *(this + 1) = v58;
                *(this + 2) = v24;
                *(this + 3) = 0;
                if (v59)
                {
                  operator delete(v59);
                }
              }

              else
              {
                *v24 = 0;
                v24 += 4;
              }

              *(this + 2) = v24;
              v61 = *(a2 + 1);
              v60 = *(a2 + 2);
              v62 = *a2;
              v63 = 0;
              v64 = 0;
              v65 = 0;
              if (v61 > 0xFFFFFFFFFFFFFFF5 || v61 + 10 > v60)
              {
                break;
              }

              v70 = (v62 + v61);
              v71 = v61 + 1;
              while (1)
              {
                v68 = v71;
                *(a2 + 1) = v71;
                v72 = *v70++;
                v65 |= (v72 & 0x7F) << v63;
                if ((v72 & 0x80) == 0)
                {
                  break;
                }

                v63 += 7;
                ++v71;
                v42 = v64++ > 8;
                if (v42)
                {
                  goto LABEL_98;
                }
              }

LABEL_101:
              *(v24 - 1) = v65;
              if (v68 >= v60 || (*(a2 + 24) & 1) != 0)
              {
                goto LABEL_119;
              }
            }

            if (v60 <= v61)
            {
              v67 = *(a2 + 1);
            }

            else
            {
              v67 = *(a2 + 2);
            }

            while (v67 != v61)
            {
              v68 = v61 + 1;
              v69 = *(v62 + v61);
              *(a2 + 1) = v68;
              v65 |= (v69 & 0x7F) << v63;
              if ((v69 & 0x80) == 0)
              {
                if (*(a2 + 24))
                {
                  LODWORD(v65) = 0;
                }

                goto LABEL_101;
              }

              v63 += 7;
              v61 = v68;
              v42 = v64++ > 8;
              if (v42)
              {
LABEL_98:
                LODWORD(v65) = 0;
                goto LABEL_101;
              }
            }

LABEL_118:
            *(a2 + 24) = 1;
            *(v24 - 1) = 0;
          }

          goto LABEL_119;
        }

        v77 = *(this + 2);
        v76 = *(this + 3);
        if (v77 >= v76)
        {
          v85 = *(this + 1);
          v86 = v77 - v85;
          v87 = (v77 - v85) >> 2;
          v88 = v87 + 1;
          if ((v87 + 1) >> 62)
          {
            goto LABEL_181;
          }

          v89 = v76 - v85;
          if (v89 >> 1 > v88)
          {
            v88 = v89 >> 1;
          }

          if (v89 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v90 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v90 = v88;
          }

          if (v90)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v90);
          }

          v103 = (v77 - v85) >> 2;
          v104 = (4 * v87);
          v105 = (4 * v87 - 4 * v103);
          *v104 = 0;
          v78 = v104 + 1;
          memcpy(v105, v85, v86);
          v106 = *(this + 1);
          *(this + 1) = v105;
          *(this + 2) = v78;
          *(this + 3) = 0;
          if (v106)
          {
            operator delete(v106);
          }
        }

        else
        {
          *v77 = 0;
          v78 = v77 + 4;
        }

        *(this + 2) = v78;
        v108 = *(a2 + 1);
        v107 = *(a2 + 2);
        v109 = *a2;
        if (v108 <= 0xFFFFFFFFFFFFFFF5 && v108 + 10 <= v107)
        {
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v113 = (v109 + v108);
          v114 = v108 + 1;
          while (1)
          {
            *(a2 + 1) = v114;
            v115 = *v113++;
            v112 |= (v115 & 0x7F) << v110;
            if ((v115 & 0x80) == 0)
            {
              goto LABEL_175;
            }

            v110 += 7;
            ++v114;
            v42 = v111++ > 8;
            if (v42)
            {
              goto LABEL_171;
            }
          }
        }

        v116 = 0;
        v117 = 0;
        v112 = 0;
        v118 = (v109 + v108);
        v18 = v107 >= v108;
        v119 = v107 - v108;
        if (!v18)
        {
          v119 = 0;
        }

        v120 = v108 + 1;
        while (v119)
        {
          v121 = *v118;
          *(a2 + 1) = v120;
          v112 |= (v121 & 0x7F) << v116;
          if ((v121 & 0x80) == 0)
          {
LABEL_173:
            if (*(a2 + 24))
            {
              LODWORD(v112) = 0;
            }

            goto LABEL_175;
          }

          v116 += 7;
          ++v118;
          --v119;
          ++v120;
          v42 = v117++ > 8;
          if (v42)
          {
LABEL_171:
            LODWORD(v112) = 0;
            goto LABEL_175;
          }
        }
      }

      else
      {
        if (v23 != 1)
        {
LABEL_18:
          if ((PB::Reader::skip(a2) & 1) == 0)
          {
            goto LABEL_179;
          }

          goto LABEL_19;
        }

        if (v22 == 2)
        {
          if (PB::Reader::placeMark())
          {
            goto LABEL_179;
          }

          if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
          {
            v24 = *(this + 5);
            do
            {
              v25 = *(this + 6);
              if (v24 >= v25)
              {
                v26 = *(this + 4);
                v27 = v24 - v26;
                v28 = (v24 - v26) >> 2;
                v29 = v28 + 1;
                if ((v28 + 1) >> 62)
                {
                  goto LABEL_181;
                }

                v30 = v25 - v26;
                if (v30 >> 1 > v29)
                {
                  v29 = v30 >> 1;
                }

                if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v31 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v29;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v31);
                }

                v32 = (v24 - v26) >> 2;
                v33 = (4 * v28);
                v34 = (4 * v28 - 4 * v32);
                *v33 = 0;
                v24 = (v33 + 1);
                memcpy(v34, v26, v27);
                v35 = *(this + 4);
                *(this + 4) = v34;
                *(this + 5) = v24;
                *(this + 6) = 0;
                if (v35)
                {
                  operator delete(v35);
                }
              }

              else
              {
                *v24 = 0;
                v24 += 4;
              }

              *(this + 5) = v24;
              v37 = *(a2 + 1);
              v36 = *(a2 + 2);
              v38 = *a2;
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36;
              if (v42)
              {
                if (v36 <= v37)
                {
                  v43 = *(a2 + 1);
                }

                else
                {
                  v43 = *(a2 + 2);
                }

                while (1)
                {
                  if (v43 == v37)
                  {
                    goto LABEL_118;
                  }

                  v44 = v37 + 1;
                  v45 = *(v38 + v37);
                  *(a2 + 1) = v44;
                  v41 |= (v45 & 0x7F) << v39;
                  if ((v45 & 0x80) == 0)
                  {
                    break;
                  }

                  v39 += 7;
                  v37 = v44;
                  v42 = v40++ > 8;
                  if (v42)
                  {
LABEL_59:
                    LODWORD(v41) = 0;
                    goto LABEL_62;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v41) = 0;
                }
              }

              else
              {
                v46 = (v38 + v37);
                v47 = v37 + 1;
                while (1)
                {
                  v44 = v47;
                  *(a2 + 1) = v47;
                  v48 = *v46++;
                  v41 |= (v48 & 0x7F) << v39;
                  if ((v48 & 0x80) == 0)
                  {
                    break;
                  }

                  v39 += 7;
                  ++v47;
                  v42 = v40++ > 8;
                  if (v42)
                  {
                    goto LABEL_59;
                  }
                }
              }

LABEL_62:
              *(v24 - 1) = v41;
            }

            while (v44 < v36 && (*(a2 + 24) & 1) == 0);
          }

LABEL_119:
          PB::Reader::recallMark();
          goto LABEL_19;
        }

        v84 = *(this + 5);
        v83 = *(this + 6);
        if (v84 >= v83)
        {
          v91 = *(this + 4);
          v92 = v84 - v91;
          v93 = (v84 - v91) >> 2;
          v94 = v93 + 1;
          if ((v93 + 1) >> 62)
          {
LABEL_181:
            std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
          }

          v95 = v83 - v91;
          if (v95 >> 1 > v94)
          {
            v94 = v95 >> 1;
          }

          if (v95 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v96 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v96 = v94;
          }

          if (v96)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v96);
          }

          v122 = (v84 - v91) >> 2;
          v123 = (4 * v93);
          v124 = (4 * v93 - 4 * v122);
          *v123 = 0;
          v78 = v123 + 1;
          memcpy(v124, v91, v92);
          v125 = *(this + 4);
          *(this + 4) = v124;
          *(this + 5) = v78;
          *(this + 6) = 0;
          if (v125)
          {
            operator delete(v125);
          }
        }

        else
        {
          *v84 = 0;
          v78 = v84 + 4;
        }

        *(this + 5) = v78;
        v127 = *(a2 + 1);
        v126 = *(a2 + 2);
        v128 = *a2;
        if (v127 <= 0xFFFFFFFFFFFFFFF5 && v127 + 10 <= v126)
        {
          v129 = 0;
          v130 = 0;
          v112 = 0;
          v131 = (v128 + v127);
          v132 = v127 + 1;
          while (1)
          {
            *(a2 + 1) = v132;
            v133 = *v131++;
            v112 |= (v133 & 0x7F) << v129;
            if ((v133 & 0x80) == 0)
            {
              goto LABEL_175;
            }

            v129 += 7;
            ++v132;
            v42 = v130++ > 8;
            if (v42)
            {
              goto LABEL_171;
            }
          }
        }

        v134 = 0;
        v135 = 0;
        v112 = 0;
        v136 = (v128 + v127);
        v18 = v126 >= v127;
        v137 = v126 - v127;
        if (!v18)
        {
          v137 = 0;
        }

        v138 = v127 + 1;
        while (v137)
        {
          v139 = *v136;
          *(a2 + 1) = v138;
          v112 |= (v139 & 0x7F) << v134;
          if ((v139 & 0x80) == 0)
          {
            goto LABEL_173;
          }

          v134 += 7;
          ++v136;
          --v137;
          ++v138;
          v42 = v135++ > 8;
          if (v42)
          {
            goto LABEL_171;
          }
        }
      }

      LODWORD(v112) = 0;
      *(a2 + 24) = 1;
LABEL_175:
      *(v78 - 1) = v112;
LABEL_19:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v140 = v4 ^ 1;
  return v140 & 1;
}

void sirinluinternalsnlp_intermediate::LinearizedTensor::~LinearizedTensor(sirinluinternalsnlp_intermediate::LinearizedTensor *this)
{
  sirinluinternalsnlp_intermediate::LinearizedTensor::~LinearizedTensor(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878600;
  v4 = (this + 56);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }

  PB::Base::~Base(this);
}

double sirinluinternalsnlp_intermediate::LinearizedTensor::LinearizedTensor(sirinluinternalsnlp_intermediate::LinearizedTensor *this)
{
  *this = &unk_1F4878600;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F4878600;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

sirinluinternalsnlp_intermediate::LinearizedTensor *sirinluinternalsnlp_intermediate::LinearizedTensor::LinearizedTensor(sirinluinternalsnlp_intermediate::LinearizedTensor *this, const sirinluinternalsnlp_intermediate::LinearizedTensor *a2)
{
  *this = &unk_1F4878600;
  *(this + 8) = 0u;
  v3 = (this + 8);
  *(this + 56) = 0u;
  v4 = (this + 56);
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 9) = 0;
  if (this != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(this + 4, *(a2 + 4), *(a2 + 5), (*(a2 + 5) - *(a2 + 4)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v3, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 2);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v4, *(a2 + 7), *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *(a2 + 7)) >> 3));
  }

  return this;
}

uint64_t sirinluinternalsnlp_intermediate::LinearizedTensor::operator=(uint64_t a1, const sirinluinternalsnlp_intermediate::LinearizedTensor *a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::LinearizedTensor::LinearizedTensor(&v9, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v6;
    v7 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v7;
    sirinluinternalsnlp_intermediate::LinearizedTensor::~LinearizedTensor(&v9);
  }

  return a1;
}

void *sirinluinternalsnlp_intermediate::swap(void *this, sirinluinternalsnlp_intermediate::LinearizedTensor *a2, sirinluinternalsnlp_intermediate::LinearizedTensor *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v4;
  v5 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v5;
  v6 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v11;
  return this;
}

uint64_t sirinluinternalsnlp_intermediate::LinearizedTensor::LinearizedTensor(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878600;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 56));
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  return a1;
}

uint64_t sirinluinternalsnlp_intermediate::LinearizedTensor::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalsnlp_intermediate::LinearizedTensor::LinearizedTensor(&v9, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v10;
    v10 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v11;
    v11 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v13;
    v13 = v6;
    v7 = *(a1 + 72);
    *(a1 + 72) = v14;
    v14 = v7;
    sirinluinternalsnlp_intermediate::LinearizedTensor::~LinearizedTensor(&v9);
  }

  return a1;
}

BOOL sirinluinternalsnlp_intermediate::LinearizedTensor::operator==(void *a1, void *a2)
{
  v5 = a1 + 4;
  v4 = a1[4];
  v6 = v5[1] - v4;
  v8 = a2 + 4;
  v7 = a2[4];
  if (v6 != v8[1] - v7)
  {
    return 0;
  }

  if (memcmp(v4, v7, v6))
  {
    return 0;
  }

  v9 = a1[1];
  v10 = a1[2] - v9;
  v11 = a2[1];
  if (v10 != a2[2] - v11)
  {
    return 0;
  }

  if (memcmp(v9, v11, v10))
  {
    return 0;
  }

  v14 = a1 + 7;
  v12 = a1[7];
  v13 = v14[1];
  v16 = a2 + 7;
  v15 = a2[7];
  if (v13 - v12 != v16[1] - v15)
  {
    return 0;
  }

  if (v12 == v13)
  {
    return 1;
  }

  do
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v12, v15);
    if (!result)
    {
      break;
    }

    v12 += 24;
    v15 += 3;
  }

  while (v12 != v13);
  return result;
}

uint64_t sirinluinternalsnlp_intermediate::LinearizedTensor::hash_value(sirinluinternalsnlp_intermediate::LinearizedTensor *this)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  v4 = PBHashBytes();
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7 = PBHashBytes();
  v8 = *(this + 7);
  v9 = *(this + 8);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v10 ^= std::__string_hash<char>::operator()[abi:ne200100](v8);
      v8 += 24;
    }

    while (v8 != v9);
  }

  return v7 ^ v4 ^ v10;
}

uint64_t SIRINLUINTERNALQUERYREWRITEQRTokenReadFrom(uint64_t a1, void *a2)
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
        v44 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
        if (v13 == 4)
        {
          *(a1 + 52) |= 1u;
          v43 = 0;
          v30 = [a2 position] + 8;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 8, v31 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v43 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v43;
          goto LABEL_72;
        }

        if (v13 == 5)
        {
          v28 = PBReaderReadString();
          v29 = 24;
          goto LABEL_58;
        }

        if (v13 != 6)
        {
LABEL_46:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_72;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 52) |= 8u;
        while (1)
        {
          v47 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v47 & 0x7F) << v21;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            LOBYTE(v27) = 0;
            goto LABEL_64;
          }
        }

        v27 = (v23 != 0) & ~[a2 hasError];
LABEL_64:
        *(a1 + 48) = v27;
      }

      else
      {
        switch(v13)
        {
          case 1:
            v28 = PBReaderReadString();
            v29 = 40;
LABEL_58:
            v39 = *(a1 + v29);
            *(a1 + v29) = v28;

            goto LABEL_72;
          case 2:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              v46 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v46 & 0x7F) << v33;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_68;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v35;
            }

LABEL_68:
            v40 = 32;
            break;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              v45 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v45 & 0x7F) << v14;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_62;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_62:
            v40 = 16;
            break;
          default:
            goto LABEL_46;
        }

        *(a1 + v40) = v20;
      }

LABEL_72:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALMENTION_DETECTORMentionDetectorRequestReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v28) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v28 & 0x7F) << v5;
        if ((v28 & 0x80) == 0)
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
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              LOBYTE(v28) = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v28 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v28 & 0x7F) << v19;
              if ((v28 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v11 = v20++ >= 9;
              if (v11)
              {
                v25 = 0;
                goto LABEL_59;
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

LABEL_59:
            *(a1 + 8) = v25;
            goto LABEL_60;
          }

          if (v13 == 8)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
            objc_storeStrong((a1 + 16), v14);
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
            {
LABEL_62:

              return 0;
            }

            goto LABEL_42;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = objc_alloc_init(SIRINLUINTERNALTokenChain);
            objc_storeStrong((a1 + 56), v14);
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v14, a2))
            {
              goto LABEL_62;
            }

            goto LABEL_42;
          }

          if (v13 == 6)
          {
            v14 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
            objc_storeStrong((a1 + 24), v14);
            v28 = 0;
            v29 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(v14, a2))
            {
              goto LABEL_62;
            }

            goto LABEL_42;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v16 = PBReaderReadString();
          v17 = 48;
          goto LABEL_44;
        }

        if (v13 == 4)
        {
          v16 = PBReaderReadString();
          v17 = 64;
LABEL_44:
          v18 = *(a1 + v17);
          *(a1 + v17) = v16;

          goto LABEL_60;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
          v15 = 40;
          goto LABEL_37;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
          v15 = 32;
LABEL_37:
          objc_storeStrong((a1 + v15), v14);
          v28 = 0;
          v29 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
          {
            goto LABEL_62;
          }

LABEL_42:
          PBReaderRecallMark();

          goto LABEL_60;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_60:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id loggerContext(int a1)
{
  if (a1 >= 2)
  {
    __cxa_rethrow();
  }

  if (loggerContext(SiriNLUTypesLogCategory)::onceToken != -1)
  {
    dispatch_once(&loggerContext(SiriNLUTypesLogCategory)::onceToken, &__block_literal_global_15749);
  }

  v2 = loggerContext(SiriNLUTypesLogCategory)::logObjects[a1];

  return v2;
}

uint64_t ___Z13loggerContext23SiriNLUTypesLogCategory_block_invoke()
{
  v0 = os_log_create("com.apple.siri.sirinlutypes", "SELFLog");
  v1 = loggerContext(SiriNLUTypesLogCategory)::logObjects[0];
  loggerContext(SiriNLUTypesLogCategory)::logObjects[0] = v0;

  qword_1EDACE2A0 = os_log_create("com.apple.siri.sirinlutypes", "Converter");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sirinluexternal::UserWantedToPause::formatText(sirinluexternal::UserWantedToPause *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "reference");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "task_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UserWantedToPause::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternal::UserWantedToPause::readFrom(sirinluexternal::UserWantedToPause *this, PB::Reader *a2)
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

void sirinluexternal::UserWantedToPause::~UserWantedToPause(sirinluexternal::UserWantedToPause *this)
{
  sirinluexternal::UserWantedToPause::~UserWantedToPause(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878690;
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

void *sirinluexternal::UserWantedToPause::UserWantedToPause(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878690;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878690;
  return this;
}

void *sirinluexternal::UserWantedToPause::UserWantedToPause(void *this, const sirinluexternal::UserWantedToPause *a2)
{
  *this = &unk_1F4878690;
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

uint64_t sirinluexternal::UserWantedToPause::operator=(uint64_t a1, const sirinluexternal::UserWantedToPause *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserWantedToPause::UserWantedToPause(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserWantedToPause::~UserWantedToPause(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UserWantedToPause *a2, sirinluexternal::UserWantedToPause *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::UserWantedToPause::UserWantedToPause(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4878690;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
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

  return a1;
}

uint64_t sirinluexternal::UserWantedToPause::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserWantedToPause::UserWantedToPause(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserWantedToPause::~UserWantedToPause(&v5);
  }

  return a1;
}

BOOL sirinluexternal::UserWantedToPause::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5 && sirinluexternal::UUID::operator==(v4, v5))
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
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
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
    v10 = *(a1 + 8);

    return sirinluexternal::UsoGraph::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternal::UserWantedToPause::hash_value(sirinluexternal::UserWantedToPause *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if ((*(v1 + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(v1 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    if ((*(v1 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = *(v1 + 8);
  if ((*(v1 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(v1 + 16);
  if ((*(v1 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(v1 + 24);
LABEL_10:
  v5 = v3 ^ v2 ^ v4;
LABEL_11:
  v6 = *(this + 1);
  if (v6)
  {
    v6 = sirinluexternal::UsoGraph::hash_value(v6);
  }

  return v6 ^ v5;
}

uint64_t sirinluexternal::UserWantedToPause::makeTaskId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserWantedToPause::makeReference(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::TurnInput::formatText(sirinluexternal::TurnInput *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "active_tasks");
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "asr_outputs");
  }

  if ((*(this + 148) & 2) != 0)
  {
    v11 = *(this + 144);
    PB::TextFormatter::format(a2, "connectedToCarPlayUltra");
  }

  v12 = *(this + 7);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "correction_outcome_override");
  }

  v13 = *(this + 8);
  v14 = *(this + 9);
  while (v13 != v14)
  {
    v15 = *v13++;
    (*(*v15 + 32))(v15, a2, "executed_tasks");
  }

  if (*(this + 11))
  {
    PB::TextFormatter::format();
  }

  v16 = *(this + 12);
  v17 = *(this + 13);
  while (v16 != v17)
  {
    v18 = *v16++;
    (*(*v18 + 32))(v18, a2, "salient_entities");
  }

  if (*(this + 148))
  {
    v19 = *(this + 15);
    PB::TextFormatter::format(a2, "start_timestamp");
  }

  v20 = *(this + 16);
  if (v20)
  {
    (*(*v20 + 32))(v20, a2, "system_dialog_act_group");
  }

  if ((*(this + 148) & 4) != 0)
  {
    v21 = *(this + 145);
    PB::TextFormatter::format(a2, "tap_to_edit");
  }

  v22 = *(this + 17);
  if (v22)
  {
    (*(*v22 + 32))(v22, a2, "turn_context");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::TurnInput::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 128);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 96);
  v6 = *(v3 + 104);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = *(v3 + 64);
  v12 = *(v3 + 72);
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = *(v3 + 32);
  v15 = *(v3 + 40);
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  v17 = *(v3 + 136);
  if (v17)
  {
    this = PB::Writer::writeSubmessage(a2, v17);
  }

  if (*(v3 + 88))
  {
    this = PB::Writer::write();
  }

  v18 = *(v3 + 148);
  if ((v18 & 4) != 0)
  {
    v19 = *(v3 + 145);
    this = PB::Writer::write(a2);
    v18 = *(v3 + 148);
  }

  if (v18)
  {
    v20 = *(v3 + 120);
    this = PB::Writer::writeVarInt(a2);
  }

  v21 = *(v3 + 56);
  if (v21)
  {
    this = PB::Writer::writeSubmessage(a2, v21);
  }

  if ((*(v3 + 148) & 2) != 0)
  {
    v22 = *(v3 + 144);

    return PB::Writer::write(a2);
  }

  return this;
}

double sirinluexternal::TurnInput::TurnInput(sirinluexternal::TurnInput *this)
{
  *this = &unk_1F48786E0;
  *(this + 37) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 16) = 0;
  *(this + 17) = 0;
  return result;
}

{
  *this = &unk_1F48786E0;
  *(this + 37) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 16) = 0;
  *(this + 17) = 0;
  return result;
}

uint64_t sirinluexternal::TurnInput::TurnInput(uint64_t this, const sirinluexternal::TurnInput *a2)
{
  *this = &unk_1F48786E0;
  *(this + 8) = 0u;
  *(this + 128) = 0;
  *(this + 148) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0;
  if (*(a2 + 16))
  {
    operator new();
  }

  v2 = *(a2 + 12);
  if (v2 != *(a2 + 13))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::EntityCandidate>::emplace_back<sirinluexternal::EntityCandidate const&>();
  }

  v4 = *(a2 + 1);
  if (v4 != *(a2 + 2))
  {
    v5 = *v4;
    PB::PtrVector<sirinluexternal::Task>::emplace_back<sirinluexternal::Task const&>();
  }

  v6 = *(a2 + 8);
  if (v6 != *(a2 + 9))
  {
    v7 = *v6;
    PB::PtrVector<sirinluexternal::Task>::emplace_back<sirinluexternal::Task const&>();
  }

  v8 = *(a2 + 4);
  if (v8 != *(a2 + 5))
  {
    v9 = *v8;
    operator new();
  }

  if (*(a2 + 17))
  {
    operator new();
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  v10 = *(a2 + 148);
  if ((v10 & 4) != 0)
  {
    v11 = *(a2 + 145);
    *(this + 148) |= 4u;
    *(this + 145) = v11;
    v10 = *(a2 + 148);
  }

  if (v10)
  {
    v12 = *(a2 + 15);
    *(this + 148) |= 1u;
    *(this + 120) = v12;
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if ((*(a2 + 148) & 2) != 0)
  {
    v13 = *(a2 + 144);
    *(this + 148) |= 2u;
    *(this + 144) = v13;
  }

  return this;
}

uint64_t sirinluexternal::TurnInput::operator=(uint64_t a1, const sirinluexternal::TurnInput *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::TurnInput::TurnInput(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::TurnInput::~TurnInput(v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::TurnInput *a2, sirinluexternal::TurnInput *a3)
{
  v3 = *(this + 148);
  *(this + 148) = *(a2 + 37);
  *(a2 + 37) = v3;
  v4 = *(this + 128);
  *(this + 128) = *(a2 + 16);
  *(a2 + 16) = v4;
  v5 = *(this + 96);
  *(this + 96) = *(a2 + 12);
  *(a2 + 12) = v5;
  v6 = *(this + 104);
  *(this + 104) = *(a2 + 13);
  *(a2 + 13) = v6;
  v7 = *(this + 112);
  v8 = *(this + 120);
  v9 = *(a2 + 15);
  *(this + 112) = *(a2 + 14);
  *(this + 120) = v9;
  *(a2 + 14) = v7;
  v10 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v10;
  v11 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v11;
  v12 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v12;
  v13 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v14;
  v15 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v15;
  v16 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v16;
  v17 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v17;
  v18 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v18;
  v19 = *(this + 136);
  *(this + 136) = *(a2 + 17);
  *(a2 + 17) = v19;
  v20 = *(this + 88);
  *(this + 88) = *(a2 + 11);
  *(a2 + 11) = v20;
  LOBYTE(v20) = *(this + 145);
  *(this + 145) = *(a2 + 145);
  *(a2 + 145) = v20;
  *(a2 + 15) = v8;
  v21 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v21;
  LOBYTE(v21) = *(this + 144);
  *(this + 144) = *(a2 + 144);
  *(a2 + 144) = v21;
  return this;
}

uint64_t sirinluexternal::TurnInput::TurnInput(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48786E0;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 148) = *(a2 + 148);
  *(a2 + 148) = 0;
  v5 = *(a2 + 128);
  *(a2 + 128) = 0;
  v6 = *(a1 + 128);
  *(a1 + 128) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 96));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 64));
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  if (*(a1 + 32))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 32));
    operator delete(*(a1 + 32));
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v7 = *(a2 + 136);
  *(a2 + 136) = 0;
  v8 = *(a1 + 136);
  *(a1 + 136) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 88);
  *(a2 + 88) = 0;
  v10 = *(a1 + 88);
  *(a1 + 88) = v9;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  *(a1 + 145) = *(a2 + 145);
  *(a1 + 120) = *(a2 + 120);
  v11 = *(a2 + 56);
  *(a2 + 56) = 0;
  v12 = *(a1 + 56);
  *(a1 + 56) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t sirinluexternal::TurnInput::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::TurnInput::TurnInput(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::TurnInput::~TurnInput(v5);
  }

  return a1;
}

BOOL sirinluexternal::TurnInput::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v5 = *(a2 + 128);
  if (v4)
  {
    if (!v5 || (sirinluexternal::SystemDialogActGroup::operator==(v4, v5) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluexternal::EntityCandidate>::operator==((a1 + 96), *(a2 + 96), *(a2 + 104));
  if (!result)
  {
    return result;
  }

  result = PB::PtrVector<sirinluexternal::Task>::operator==(a1 + 8, *(a2 + 8), *(a2 + 16));
  if (!result)
  {
    return result;
  }

  result = PB::PtrVector<sirinluexternal::Task>::operator==(a1 + 64, *(a2 + 64), *(a2 + 72));
  if (!result)
  {
    return result;
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a2 + 32);
  if (v7 - v8 != *(a2 + 40) - v9)
  {
    return 0;
  }

  while (v8 != v7)
  {
    result = sirinluexternal::AsrHypothesis::operator==(*v8, *v9);
    if (!result)
    {
      return result;
    }

    ++v8;
    ++v9;
  }

  v10 = *(a1 + 136);
  v11 = *(a2 + 136);
  if (v10)
  {
    if (!v11 || !sirinluexternal::TurnContext::operator==(v10, v11))
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(a1 + 88);
  v13 = *(a2 + 88);
  if (v12)
  {
    if (!v13 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v12, v13))
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if ((*(a1 + 148) & 4) != 0)
  {
    if ((*(a2 + 148) & 4) == 0 || *(a1 + 145) != *(a2 + 145))
    {
      return 0;
    }
  }

  else if ((*(a2 + 148) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 148))
  {
    if ((*(a2 + 148) & 1) == 0 || *(a1 + 120) != *(a2 + 120))
    {
      return 0;
    }
  }

  else if (*(a2 + 148))
  {
    return 0;
  }

  v14 = *(a1 + 56);
  v15 = *(a2 + 56);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = *(v15 + 12);
    if ((*(v14 + 12) & 1) == 0)
    {
      if ((*(v15 + 12) & 1) == 0)
      {
        goto LABEL_44;
      }

      return 0;
    }

    if ((*(v15 + 12) & 1) == 0 || *(v14 + 8) != *(v15 + 8))
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

LABEL_44:
  result = (*(a2 + 148) & 2) == 0;
  if ((*(a1 + 148) & 2) != 0)
  {
    return (*(a2 + 148) & 2) != 0 && *(a1 + 144) == *(a2 + 144);
  }

  return result;
}

unint64_t sirinluexternal::TurnInput::hash_value(sirinluexternal::TurnInput *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    v3 = sirinluexternal::SystemDialogActGroup::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 12);
  v5 = *(this + 13);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= sirinluexternal::EntityCandidate::hash_value(v7);
    }

    while (v4 != v5);
  }

  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *v8++;
      v10 ^= sirinluexternal::Task::hash_value(v11);
    }

    while (v8 != v9);
  }

  v12 = *(this + 8);
  v13 = *(this + 9);
  if (v12 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      v15 = *v12++;
      v14 ^= sirinluexternal::Task::hash_value(v15);
    }

    while (v12 != v13);
  }

  v16 = *(this + 4);
  v17 = *(this + 5);
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
      v18 ^= sirinluexternal::AsrHypothesis::hash_value(v19);
    }

    while (v16 != v17);
  }

  v20 = *(this + 17);
  if (v20)
  {
    v21 = sirinluexternal::TurnContext::hash_value(v20);
  }

  else
  {
    v21 = 0;
  }

  v22 = *(this + 11);
  if (v22)
  {
    v22 = std::__string_hash<char>::operator()[abi:ne200100](v22);
  }

  if ((*(this + 148) & 4) != 0)
  {
    v23 = *(this + 145);
    if (*(this + 148))
    {
      goto LABEL_31;
    }
  }

  else
  {
    v23 = 0;
    if (*(this + 148))
    {
LABEL_31:
      v24 = *(this + 15);
      goto LABEL_34;
    }
  }

  v24 = 0;
LABEL_34:
  v25 = *(this + 7);
  if (v25)
  {
    if (*(v25 + 12))
    {
      v25 = *(v25 + 8);
      if ((*(this + 148) & 2) == 0)
      {
        goto LABEL_38;
      }

LABEL_40:
      v26 = *(this + 144);
      return v6 ^ v3 ^ v10 ^ v14 ^ v21 ^ v22 ^ v23 ^ v24 ^ v18 ^ v25 ^ v26;
    }

    v25 = 0;
  }

  if ((*(this + 148) & 2) != 0)
  {
    goto LABEL_40;
  }

LABEL_38:
  v26 = 0;
  return v6 ^ v3 ^ v10 ^ v14 ^ v21 ^ v22 ^ v23 ^ v24 ^ v18 ^ v25 ^ v26;
}

uint64_t sirinluexternal::TurnInput::makeSystemDialogActGroup(uint64_t this)
{
  if (!*(this + 128))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::TurnInput::makeTurnContext(uint64_t this)
{
  if (!*(this + 136))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::TurnInput::makeCorrectionOutcomeOverride(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::PayloadAttachmentInfo::formatText(sirinluexternal::PayloadAttachmentInfo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    v5 = *(this + 2);
    PB::TextFormatter::format(a2, "attachment_type");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::PayloadAttachmentInfo::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    v2 = *(this + 8);
    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluexternal::PayloadAttachmentInfo::readFrom(sirinluexternal::PayloadAttachmentInfo *this, PB::Reader *a2)
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
          goto LABEL_27;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_46;
      }

      if ((v10 >> 3) == 1)
      {
        *(this + 12) |= 1u;
        v22 = *(a2 + 1);
        v2 = *(a2 + 2);
        v23 = *a2;
        if (v22 > 0xFFFFFFFFFFFFFFF5 || v22 + 10 > v2)
        {
          v30 = 0;
          v31 = 0;
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
              goto LABEL_41;
            }

            v32 = v22 + 1;
            v33 = *(v23 + v22);
            *(a2 + 1) = v32;
            v26 |= (v33 & 0x7F) << v30;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v22 = v32;
            v14 = v31++ > 8;
            if (v14)
            {
              LODWORD(v26) = 0;
              goto LABEL_40;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v26) = 0;
          }

LABEL_40:
          v3 = v32;
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

LABEL_41:
        *(this + 2) = v26;
      }

      else
      {
LABEL_27:
        if (!PB::Reader::skip(a2))
        {
          v34 = 0;
          return v34 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_46;
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
        goto LABEL_27;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_46:
  v34 = v4 ^ 1;
  return v34 & 1;
}

void sirinluexternal::PayloadAttachmentInfo::~PayloadAttachmentInfo(sirinluexternal::PayloadAttachmentInfo *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

void *sirinluexternal::PayloadAttachmentInfo::PayloadAttachmentInfo(void *this)
{
  *this = &unk_1F4878730;
  this[1] = 0;
  return this;
}

{
  *this = &unk_1F4878730;
  this[1] = 0;
  return this;
}

uint64_t sirinluexternal::PayloadAttachmentInfo::PayloadAttachmentInfo(uint64_t this, const sirinluexternal::PayloadAttachmentInfo *a2)
{
  *this = &unk_1F4878730;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

{
  *this = &unk_1F4878730;
  *(this + 8) = 0;
  if (*(a2 + 12))
  {
    v2 = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 8) = v2;
  }

  return this;
}

uint64_t sirinluexternal::PayloadAttachmentInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v6[0] = &unk_1F4878730;
    v3 = *(a2 + 12);
    v4 = *(a1 + 8);
    *(a1 + 8) = (v3 << 31 >> 31) & *(a2 + 8);
    *(a1 + 12) = v3 & 1;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v6[0] = &unk_1F4878730;
    v3 = *(a2 + 8);
    *(a2 + 12) = 0;
    v4 = *(a1 + 8);
    *(a1 + 8) = v3;
    v6[1] = v4;
    PB::Base::~Base(v6);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::PayloadAttachmentInfo *a2, sirinluexternal::PayloadAttachmentInfo *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 2);
  *(a2 + 2) = v4;
  return this;
}

uint64_t sirinluexternal::PayloadAttachmentInfo::PayloadAttachmentInfo(uint64_t result, uint64_t a2)
{
  *result = &unk_1F4878730;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

{
  *result = &unk_1F4878730;
  *(result + 8) = 0;
  *(result + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  *(result + 8) = *(a2 + 8);
  return result;
}

BOOL sirinluexternal::PayloadAttachmentInfo::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t sirinluexternal::PayloadAttachmentInfo::hash_value(sirinluexternal::PayloadAttachmentInfo *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sirinluexternalnlu_router::RequestSummary::formatText(sirinluexternalnlu_router::RequestSummary *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "turn_summaries");
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalnlu_router::RequestSummary::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 32))
  {
    this = PB::Writer::write();
  }

  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  while (v5 != v4)
  {
    v6 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluexternalnlu_router::RequestSummary::readFrom(sirinluexternalnlu_router::RequestSummary *this, PB::Reader *a2)
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

void sirinluexternalnlu_router::RequestSummary::~RequestSummary(sirinluexternalnlu_router::RequestSummary *this)
{
  sirinluexternalnlu_router::RequestSummary::~RequestSummary(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878780;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluexternalnlu_router::RequestSummary::RequestSummary(sirinluexternalnlu_router::RequestSummary *this)
{
  *this = &unk_1F4878780;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4878780;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluexternalnlu_router::RequestSummary::RequestSummary(uint64_t this, const sirinluexternalnlu_router::RequestSummary *a2)
{
  *this = &unk_1F4878780;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 4))
  {
    operator new();
  }

  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t sirinluexternalnlu_router::RequestSummary::operator=(uint64_t a1, const sirinluexternalnlu_router::RequestSummary *a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::RequestSummary::RequestSummary(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternalnlu_router::RequestSummary::~RequestSummary(v7);
  }

  return a1;
}

void *sirinluexternalnlu_router::swap(void *this, sirinluexternalnlu_router::RequestSummary *a2, sirinluexternalnlu_router::RequestSummary *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t sirinluexternalnlu_router::RequestSummary::RequestSummary(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F4878780;
  *(a1 + 24) = 0u;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
    if (*v4)
    {
      std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
      operator delete(*v4);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluexternalnlu_router::RequestSummary::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalnlu_router::RequestSummary::RequestSummary(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternalnlu_router::RequestSummary::~RequestSummary(v7);
  }

  return a1;
}

uint64_t sirinluexternalnlu_router::RequestSummary::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
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

    v10 = v6 >= 0 ? *(a1 + 32) : *v4;
    v11 = v9 >= 0 ? *(a2 + 32) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v14 = a1 + 8;
  v12 = *(a1 + 8);
  v13 = *(v14 + 8);
  v16 = a2 + 8;
  v15 = *(a2 + 8);
  if (v13 - v12 != *(v16 + 8) - v15)
  {
    return 0;
  }

  if (v12 == v13)
  {
    return 1;
  }

  do
  {
    v18 = *v12++;
    v17 = v18;
    v19 = *v15++;
    result = sirinluexternalnlu_router::TurnSummary::operator==(v17, v19);
    if (result)
    {
      v21 = v12 == v13;
    }

    else
    {
      v21 = 1;
    }
  }

  while (!v21);
  return result;
}

unint64_t sirinluexternalnlu_router::RequestSummary::hash_value(sirinluexternalnlu_router::RequestSummary *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v5 = *(this + 1);
  v4 = *(this + 2);
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v5++;
      v6 ^= sirinluexternalnlu_router::TurnSummary::hash_value(v7);
    }

    while (v5 != v4);
  }

  return v6 ^ v3;
}

uint64_t SIRINLUINTERNALCONTEXTUAL_SPAN_MATCHERContextualSpanMatcherResponseReadFrom(void *a1, void *a2)
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
        [a1 addContextualSpans:v13];
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

uint64_t siri::ontology::createUsoGraphProtoReaderLogContext(siri::ontology *this)
{
  if (siri::ontology::createUsoGraphProtoReaderLogContext(void)::once != -1)
  {
    dispatch_once(&siri::ontology::createUsoGraphProtoReaderLogContext(void)::once, &__block_literal_global_15957);
  }

  return siri::ontology::createUsoGraphProtoReaderLogContext(void)::rdLogContext;
}

os_log_t ___ZN4siri8ontology35createUsoGraphProtoReaderLogContextEv_block_invoke()
{
  result = os_log_create("com.apple.siri.SiriNLUTypes.Serializer", "UsoGraphProtoReader");
  siri::ontology::createUsoGraphProtoReaderLogContext(void)::rdLogContext = result;
  return result;
}

uint64_t siri::ontology::UsoGraphProtoReader::getOrCreateNodeName(siri::ontology::UsoVocabManager **this, const sirinluexternal::UsoNode *a2)
{
  v2 = *(a2 + 18);
  if (v2)
  {
    v3 = *(a2 + 18);
    NodeName = siri::ontology::UsoVocabManager::getNodeName(*this);
    if ((v5 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v18, "UsoGraphProtoReaderException");
      std::to_string(&v14, v2);
      v11 = std::string::insert(&v14, 0, "Invalid node element id: ");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v16 = v11->__r_.__value_.__r.__words[2];
      v15 = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,std::string>(v18, 66, "getOrCreateNodeName");
    }

    return NodeName;
  }

  else
  {
    v7 = *(a2 + 1);
    if (!v7)
    {
      v13 = std::string::basic_string[abi:ne200100]<0>(v18, "UsoGraphProtoReaderException");
      siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,char const*>(v13, 55, "getOrCreateNodeName", "element id 0 (custom) used without an entity label set");
    }

    v8 = *this;
    if (*(v7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *v7, *(v7 + 1));
    }

    else
    {
      v9 = *v7;
      v17.__r_.__value_.__r.__words[2] = *(v7 + 2);
      *&v17.__r_.__value_.__l.__data_ = v9;
    }

    CustomEntityName = siri::ontology::UsoVocabManager::createCustomEntityName();
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }
  }

  return CustomEntityName;
}

void sub_1C8B98FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,char const*>(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  exception = __cxa_allocate_exception(0x70uLL);
  std::string::basic_string[abi:ne200100]<0>(v9, "/Library/Caches/com.apple.xbs/Sources/SiriNLUTypes/serializers/SiriOntology/cpp/UsoGraphProtoReader.cpp");
  std::string::basic_string[abi:ne200100]<0>(v8, a3);
  std::string::basic_string[abi:ne200100]<0>(v7, a4);
  siri::ontology::OntologyBaseException::OntologyBaseException();
  *exception = &unk_1F4878848;
}

void sub_1C8B99124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
    if ((v28 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v28)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v27);
  goto LABEL_10;
}

void siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,std::string>(uint64_t a1, uint64_t a2, char *a3)
{
  exception = __cxa_allocate_exception(0x70uLL);
  std::string::basic_string[abi:ne200100]<0>(v6, "/Library/Caches/com.apple.xbs/Sources/SiriNLUTypes/serializers/SiriOntology/cpp/UsoGraphProtoReader.cpp");
  std::string::basic_string[abi:ne200100]<0>(v5, a3);
  siri::ontology::OntologyBaseException::OntologyBaseException();
  *exception = &unk_1F4878848;
}

void sub_1C8B99258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void siri::ontology::UsoGraphProtoReaderException::~UsoGraphProtoReaderException(std::exception *this)
{
  siri::ontology::OntologyBaseException::~OntologyBaseException(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siri::ontology::UsoGraphProtoReader::getOrCreateEdgeName(siri::ontology::UsoVocabManager **this, const sirinluexternal::UsoEdgeLabel *a2)
{
  v2 = *(a2 + 5);
  if (v2)
  {
    v3 = *(a2 + 5);
    EdgeName = siri::ontology::UsoVocabManager::getEdgeName(*this);
    if ((v5 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v22, "UsoGraphProtoReaderException");
      std::to_string(&v18, v2);
      v15 = std::string::insert(&v18, 0, "Invalid edge element id: ");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v20 = v15->__r_.__value_.__r.__words[2];
      v19 = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,std::string>(v22, 91, "getOrCreateEdgeName");
    }

    return EdgeName;
  }

  v7 = *(a2 + 1);
  if (!v7)
  {
    v17 = std::string::basic_string[abi:ne200100]<0>(v22, "UsoGraphProtoReaderException");
    siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,char const*>(v17, 77, "getOrCreateEdgeName", "baseEdgeLabel is NULL when edgeId being 0 (i.e. custom edge)");
  }

  v8 = *(v7 + 8);
  if (!v8)
  {
    goto LABEL_14;
  }

  if ((*(v8 + 23) & 0x80000000) == 0)
  {
    if (*(v8 + 23))
    {
      v9 = *this;
      v10 = *(v8 + 16);
      *&v21.__r_.__value_.__l.__data_ = *v8;
      v21.__r_.__value_.__r.__words[2] = v10;
      goto LABEL_11;
    }

LABEL_14:
    v14 = std::string::basic_string[abi:ne200100]<0>(v22, "UsoGraphProtoReaderException");
    siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,char const*>(v14, 82, "getOrCreateEdgeName", "Empty baseEdgeLabel when edgeId being 0 (i.e. custom edge)");
  }

  v11 = *(v8 + 8);
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = *this;
  std::string::__init_copy_ctor_external(&v21, *v8, v11);
LABEL_11:
  CustomEdgeName = siri::ontology::UsoVocabManager::createCustomEdgeName();
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return CustomEdgeName;
}

void sub_1C8B99464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::ontology::UsoGraphProtoReader::getOrCreateVerbName(siri::ontology::UsoVocabManager **this, const sirinluexternal::UsoNode *a2)
{
  v2 = *(a2 + 7);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *(v2 + 8);
    VerbName = siri::ontology::UsoVocabManager::getVerbName(*this);
    if ((v6 & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v19, "UsoGraphProtoReaderException");
      std::to_string(&v15, v3);
      v12 = std::string::insert(&v15, 0, "Invalid verb element id: ");
      v13 = *&v12->__r_.__value_.__l.__data_;
      v17 = v12->__r_.__value_.__r.__words[2];
      v16 = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,std::string>(v19, 109, "getOrCreateVerbName");
    }

    return VerbName;
  }

  else
  {
    v8 = *(a2 + 8);
    if (!v8)
    {
      v14 = std::string::basic_string[abi:ne200100]<0>(v19, "UsoGraphProtoReaderException");
      siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,char const*>(v14, 100, "getOrCreateVerbName", "verb element id 0 (custom) used without a verbLabel set");
    }

    v9 = *this;
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *v8, *(v8 + 1));
    }

    else
    {
      v10 = *v8;
      v18.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&v18.__r_.__value_.__l.__data_ = v10;
    }

    CustomVerbName = siri::ontology::UsoVocabManager::createCustomVerbName();
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  return CustomVerbName;
}

void sub_1C8B995FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

void siri::ontology::populateUtteranceSpan(siri::ontology *this, const sirinluexternal::UtteranceSpan *a2)
{
  v2 = *(this + 5);
  v3 = *(this + 2);
  operator new();
}

void siri::ontology::populateAlternative(siri::ontology *this, const sirinluexternal::AsrAlternative *a2)
{
  if (*(this + 1))
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v2, "UsoGraphProtoReaderException");
  siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,char const*>(&v2, 133, "populateAlternative", "AsrAlternative without alternative value");
}

void siri::ontology::populateSpanProperty(siri::ontology *this, const sirinluexternal::SpanProperty *a2)
{
  if (*(this + 1))
  {
    operator new();
  }

  std::string::basic_string[abi:ne200100]<0>(&v2, "UsoGraphProtoReaderException");
  siri::ontology::throwException<siri::ontology::UsoGraphProtoReaderException,char const*,int,char const*,char const*>(&v2, 148, "populateSpanProperty", "span property map without a key existance");
}

uint64_t *std::unique_ptr<siri::ontology::SpanProperty>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 48) == 1 && *(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1CCA7EC50](v2, 0x1012C40785BF0B2);
  }

  return a1;
}

void sub_1C8B99DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9)
{
  if (v9)
  {
    operator delete(v9);
  }

  v11 = *a9;
  *a9 = 0;
  if (v11)
  {
    std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

void std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siri::ontology::buildEntitySpanMap(uint64_t result)
{
  v1 = *(result + 104);
  if (v1 != *(result + 112))
  {
    v2 = *v1;
    operator new();
  }

  return result;
}

void sub_1C8B9A280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1C8B9A2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    std::default_delete<siri::ontology::AsrAlternative>::operator()[abi:ne200100](a10);
  }

  JUMPOUT(0x1C8B9A2B4);
}

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::default_delete<siri::ontology::AsrAlternative>::operator()[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  JUMPOUT(0x1CCA7EC50);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 176) == 1 && *(v2 + 175) < 0)
    {
      operator delete(*(v2 + 152));
    }

    v5 = (v2 + 128);
    std::vector<std::unique_ptr<siri::ontology::AsrAlternative>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = (v2 + 88);
    std::vector<std::unique_ptr<siri::ontology::SpanProperty>>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(v2 + 80) == 1)
    {
      v3 = *(v2 + 72);
      *(v2 + 72) = 0;
      if (v3)
      {
        std::default_delete<siri::ontology::MatchInfo>::operator()[abi:ne200100](v3);
      }
    }

    if (*(v2 + 64) == 1 && *(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    if (*(v2 + 24) == 1 && *(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1CCA7EC50](v2, 0x1032C403F51C822);
  }

  return a1;
}

void std::vector<std::unique_ptr<siri::ontology::AsrAlternative>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          std::default_delete<siri::ontology::AsrAlternative>::operator()[abi:ne200100](v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<siri::ontology::SpanProperty>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<siri::ontology::SpanProperty>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<siri::ontology::UsoEntitySpan>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void siri::ontology::UsoGraphProtoReader::fromProtobuf(siri::ontology::UsoGraphProtoReader *this, const sirinluexternal::UsoGraph *a2, siri::ontology::UsoGraph *a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (v3 + 8);
    v5 = (v3 + 16);
  }

  else
  {
    v4 = *(*this + 128);
    v5 = (v4 + 1);
  }

  v6 = *v5;
  *(a3 + 1) = *v4;
  *(a3 + 4) = v6;
  operator new();
}

void sub_1C8B9BD48(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, __int16 a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,void *>>>>::~unique_ptr[abi:ne200100](v56 - 160);
  if (a2 == 2)
  {
    v59 = __cxa_begin_catch(a1);
    if (siri::ontology::createUsoGraphProtoReaderLogContext(void)::once != -1)
    {
      dispatch_once(&siri::ontology::createUsoGraphProtoReaderLogContext(void)::once, &__block_literal_global_15957);
    }

    v60 = siri::ontology::createUsoGraphProtoReaderLogContext(void)::rdLogContext;
    if (os_log_type_enabled(siri::ontology::createUsoGraphProtoReaderLogContext(void)::rdLogContext, OS_LOG_TYPE_ERROR))
    {
      v63 = (*(*v59 + 16))(v59);
      *(v56 - 128) = 136315138;
      *(v56 - 124) = v63;
      _os_log_error_impl(&dword_1C8774000, v60, OS_LOG_TYPE_ERROR, "%s", (v56 - 128), 0xCu);
    }
  }

  else
  {
    if (a2 != 1)
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>>>::~__hash_table(&a33);
      std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>>>::~__hash_table(&a39);
      std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>>>::~__hash_table(&a51);
      if (a18)
      {
        operator delete(a18);
      }

      std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a56);
      _Unwind_Resume(a1);
    }

    v61 = __cxa_begin_catch(a1);
    if (siri::ontology::createUsoGraphProtoReaderLogContext(void)::once != -1)
    {
      dispatch_once(&siri::ontology::createUsoGraphProtoReaderLogContext(void)::once, &__block_literal_global_15957);
    }

    v62 = siri::ontology::createUsoGraphProtoReaderLogContext(void)::rdLogContext;
    if (os_log_type_enabled(siri::ontology::createUsoGraphProtoReaderLogContext(void)::rdLogContext, OS_LOG_TYPE_ERROR))
    {
      v64 = (*(*v61 + 16))(v61);
      *(v56 - 128) = 136315138;
      *(v56 - 124) = v64;
      _os_log_error_impl(&dword_1C8774000, v62, OS_LOG_TYPE_ERROR, "%s", (v56 - 128), 0xCu);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1C8B9BB2CLL);
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 72) == 1 && *(v2 + 71) < 0)
    {
      operator delete(*(v2 + 48));
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1CCA7EC50](v2, 0x1012C40071C2685);
  }

  return a1;
}

uint64_t *std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 8);
      if (v4 != v3)
      {
        do
        {
          v7 = *--v4;
          v6 = v7;
          *v4 = 0;
          if (v7)
          {
            MEMORY[0x1CCA7EC50](v6, 0x1000C405AAC83ABLL);
          }
        }

        while (v4 != v3);
        v5 = *(v2 + 8);
      }

      *(v2 + 16) = v3;
      operator delete(v5);
    }

    MEMORY[0x1CCA7EC50](v2, 0x1020C40E72D6CFBLL);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<std::unique_ptr<siri::ontology::UsoEntitySpan>>::__destroy_vector::operator()[abi:ne200100](&v6);
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100](v2 + 3);
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 24);
      std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v6);
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

void std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 = std::unique_ptr<siri::ontology::UsoIdentifier>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__throw_out_of_range[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception);
  __cxa_throw(exception, off_1E8323F40, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>>>::__rehash<true>(uint64_t a1, size_t __n)
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

    std::__throw_bad_array_new_length[abi:ne200100]();
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

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::unique_ptr<siri::ontology::UsoUtteranceAlignment>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::unique_ptr<siri::ontology::UsoUtteranceAlignment>::~unique_ptr[abi:ne200100](v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<std::unique_ptr<siri::ontology::UsoIdentifier>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sirinluexternal::SystemReportedSuccess::formatText(sirinluexternal::SystemReportedSuccess *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "task");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "task_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::SystemReportedSuccess::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternal::SystemReportedSuccess::readFrom(sirinluexternal::SystemReportedSuccess *this, PB::Reader *a2)
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

void sirinluexternal::SystemReportedSuccess::~SystemReportedSuccess(sirinluexternal::SystemReportedSuccess *this)
{
  sirinluexternal::SystemReportedSuccess::~SystemReportedSuccess(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878898;
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

void *sirinluexternal::SystemReportedSuccess::SystemReportedSuccess(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878898;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878898;
  return this;
}

void *sirinluexternal::SystemReportedSuccess::SystemReportedSuccess(void *this, const sirinluexternal::SystemReportedSuccess *a2)
{
  *this = &unk_1F4878898;
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

uint64_t sirinluexternal::SystemReportedSuccess::operator=(uint64_t a1, const sirinluexternal::SystemReportedSuccess *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemReportedSuccess::SystemReportedSuccess(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::SystemReportedSuccess::~SystemReportedSuccess(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::SystemReportedSuccess *a2, sirinluexternal::SystemReportedSuccess *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::SystemReportedSuccess::SystemReportedSuccess(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4878898;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
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

  return a1;
}

uint64_t sirinluexternal::SystemReportedSuccess::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemReportedSuccess::SystemReportedSuccess(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::SystemReportedSuccess::~SystemReportedSuccess(&v5);
  }

  return a1;
}

BOOL sirinluexternal::SystemReportedSuccess::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5 && sirinluexternal::UUID::operator==(v4, v5))
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
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
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
    v10 = *(a1 + 8);

    return sirinluexternal::UsoGraph::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternal::SystemReportedSuccess::hash_value(sirinluexternal::SystemReportedSuccess *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if ((*(v1 + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(v1 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    if ((*(v1 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = *(v1 + 8);
  if ((*(v1 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(v1 + 16);
  if ((*(v1 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(v1 + 24);
LABEL_10:
  v5 = v3 ^ v2 ^ v4;
LABEL_11:
  v6 = *(this + 1);
  if (v6)
  {
    v6 = sirinluexternal::UsoGraph::hash_value(v6);
  }

  return v6 ^ v5;
}

uint64_t sirinluexternal::SystemReportedSuccess::makeTaskId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemReportedSuccess::makeTask(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALRewriteHypothesisReadFrom(uint64_t a1, void *a2)
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

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATEITFMContextFeaturizerResponseReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponse);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATEContextFeaturizerResponseReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
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

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::UserParse::formatText(sirinluexternal::UserParse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 88))
  {
    PB::TextFormatter::format(a2, "comparable_probability", *(this + 1));
  }

  v5 = *(this + 2);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "correction_outcome");
  }

  v6 = *(this + 3);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "id_a");
  }

  v7 = *(this + 4);
  if (v7)
  {
    (*(*v7 + 32))(v7, a2, "parser");
  }

  if (*(this + 5))
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 88) & 2) != 0)
  {
    PB::TextFormatter::format(a2, "probability", *(this + 6));
  }

  v8 = *(this + 7);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "repetition_result");
  }

  v9 = *(this + 8);
  v10 = *(this + 9);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "user_dialog_acts");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UserParse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 64);
  v6 = *(v3 + 72);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  if ((*(v3 + 88) & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 48));
  }

  if (*(v3 + 40))
  {
    this = PB::Writer::write();
  }

  v8 = *(v3 + 56);
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = *(v3 + 32);
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  if (*(v3 + 88))
  {
    this = PB::Writer::write(a2, *(v3 + 8));
  }

  v10 = *(v3 + 16);
  if (v10)
  {

    return PB::Writer::writeSubmessage(a2, v10);
  }

  return this;
}

uint64_t sirinluexternal::UserParse::readFrom(sirinluexternal::UserParse *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 4)
    {
      if (v22 > 6)
      {
        if (v22 == 7)
        {
          *(this + 88) |= 1u;
          v24 = *(a2 + 1);
          if (v24 > 0xFFFFFFFFFFFFFFF7 || v24 + 8 > *(a2 + 2))
          {
LABEL_42:
            *(a2 + 24) = 1;
            goto LABEL_45;
          }

          *(this + 1) = *(*a2 + v24);
          goto LABEL_44;
        }

        if (v22 == 8)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 5)
        {
          operator new();
        }

        if (v22 == 6)
        {
          operator new();
        }
      }
    }

    else if (v22 > 2)
    {
      if (v22 == 3)
      {
        *(this + 88) |= 2u;
        v23 = *(a2 + 1);
        if (v23 > 0xFFFFFFFFFFFFFFF7 || v23 + 8 > *(a2 + 2))
        {
          goto LABEL_42;
        }

        *(this + 6) = *(*a2 + v23);
LABEL_44:
        *(a2 + 1) += 8;
        goto LABEL_45;
      }

      if (v22 == 4)
      {
        operator new();
      }
    }

    else
    {
      if (v22 == 1)
      {
        operator new();
      }

      if (v22 == 2)
      {
        PB::PtrVector<sirinluexternal::UserDialogAct>::emplace_back<>();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v26 = 0;
      return v26 & 1;
    }

LABEL_45:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v26 = v4 ^ 1;
  return v26 & 1;
}

void sirinluexternal::UserParse::~UserParse(sirinluexternal::UserParse *this)
{
  sirinluexternal::UserParse::~UserParse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48788E8;
  v7 = (this + 64);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 2);
  *(this + 2) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::UserParse::UserParse(sirinluexternal::UserParse *this)
{
  *this = &unk_1F48788E8;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  return result;
}

{
  *this = &unk_1F48788E8;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  return result;
}

uint64_t sirinluexternal::UserParse::UserParse(uint64_t this, const sirinluexternal::UserParse *a2)
{
  *this = &unk_1F48788E8;
  *(this + 16) = 0u;
  *(this + 56) = 0u;
  *(this + 32) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0;
  if (*(a2 + 3))
  {
    operator new();
  }

  v2 = *(a2 + 8);
  if (v2 != *(a2 + 9))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::UserDialogAct>::emplace_back<sirinluexternal::UserDialogAct const&>();
  }

  if ((*(a2 + 88) & 2) != 0)
  {
    v4 = *(a2 + 6);
    *(this + 88) |= 2u;
    *(this + 48) = v4;
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 88))
  {
    v5 = *(a2 + 1);
    *(this + 88) |= 1u;
    *(this + 8) = v5;
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserParse::operator=(uint64_t a1, const sirinluexternal::UserParse *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserParse::UserParse(&v12, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v18;
    v18 = v3;
    v4 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v4;
    v5 = *(a1 + 56);
    *(a1 + 56) = v17;
    v17 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v13;
    v13 = v6;
    v7 = v15;
    v9 = *(a1 + 16);
    v8 = *(a1 + 32);
    *(a1 + 16) = v14;
    *(a1 + 32) = v7;
    v10 = *(a1 + 88);
    *(a1 + 88) = v19;
    v19 = v10;
    v14 = v9;
    v15 = v8;
    sirinluexternal::UserParse::~UserParse(&v12);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::UserParse *a2, sirinluexternal::UserParse *a3)
{
  v3 = *(this + 22);
  *(this + 22) = *(a2 + 22);
  *(a2 + 22) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v6;
  v7 = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v7;
  v8 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v8;
  v9 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v11;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v13 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v13;
  return result;
}

uint64_t sirinluexternal::UserParse::UserParse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48788E8;
  *(a1 + 56) = 0u;
  v4 = (a1 + 56);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = 0;
  v5 = *(a2 + 24);
  *(a2 + 24) = 0;
  v6 = *(a1 + 24);
  *(a1 + 24) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 64));
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 40);
  *(a2 + 40) = 0;
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  v9 = *(a2 + 56);
  *(a2 + 56) = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a2 + 32);
  *(a2 + 32) = 0;
  v12 = *(a1 + 32);
  *(a1 + 32) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(a1 + 8) = *(a2 + 8);
  v13 = *(a2 + 16);
  *(a2 + 16) = 0;
  v14 = *(a1 + 16);
  *(a1 + 16) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  return a1;
}

uint64_t sirinluexternal::UserParse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserParse::UserParse(&v12, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v18;
    v18 = v3;
    v4 = *(a1 + 48);
    *(a1 + 48) = v16;
    v16 = v4;
    v5 = *(a1 + 56);
    *(a1 + 56) = v17;
    v17 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v13;
    v13 = v6;
    v7 = v15;
    v9 = *(a1 + 16);
    v8 = *(a1 + 32);
    *(a1 + 16) = v14;
    *(a1 + 32) = v7;
    v10 = *(a1 + 88);
    *(a1 + 88) = v19;
    v19 = v10;
    v14 = v9;
    v15 = v8;
    sirinluexternal::UserParse::~UserParse(&v12);
  }

  return a1;
}

BOOL sirinluexternal::UserParse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluexternal::UserDialogAct>::operator==(a1 + 64, *(a2 + 64), *(a2 + 72));
  if (!result)
  {
    return result;
  }

  v7 = *(a1 + 88);
  v8 = *(a2 + 88);
  if ((v7 & 2) != 0)
  {
    if ((*(a2 + 88) & 2) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 88) & 2) != 0)
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v10 = *(a2 + 40);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *(v9 + 23);
    if (v11 >= 0)
    {
      v12 = *(v9 + 23);
    }

    else
    {
      v12 = *(v9 + 8);
    }

    v13 = *(v10 + 23);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v10 + 8);
    }

    if (v12 != v13)
    {
      return 0;
    }

    v15 = v11 >= 0 ? *(a1 + 40) : *v9;
    v16 = v14 >= 0 ? *(a2 + 40) : *v10;
    if (memcmp(v15, v16, v12))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v17 = *(a1 + 56);
  v18 = *(a2 + 56);
  if (v17)
  {
    if (!v18 || !sirinluexternal::RepetitionResult::operator==(v17, v18))
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = *(a1 + 32);
  v20 = *(a2 + 32);
  if (v19)
  {
    if (!v20 || !sirinluexternal::Parser::operator==(v19, v20))
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_46;
    }

    return 0;
  }

  if ((v8 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

LABEL_46:
  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  result = (v21 | v22) == 0;
  if (v21 && v22)
  {
    v23 = *(v22 + 12);
    if (*(v21 + 12))
    {
      if ((*(v22 + 12) & 1) != 0 && *(v21 + 8) == *(v22 + 8))
      {
        return 1;
      }
    }

    else if ((*(v22 + 12) & 1) == 0)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sirinluexternal::UserParse::hash_value(sirinluexternal::UserParse *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 24);
LABEL_10:
  v6 = v4 ^ v3 ^ v5;
LABEL_11:
  v7 = *(this + 8);
  v8 = *(this + 9);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v7++;
      v9 ^= sirinluexternal::UserDialogAct::hash_value(v10);
    }

    while (v7 != v8);
  }

  v11 = *(this + 88);
  if ((v11 & 2) != 0)
  {
    if (*(this + 6) == 0.0)
    {
      v12 = 0;
    }

    else
    {
      v12 = *(this + 6);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *(this + 5);
  if (v13)
  {
    v13 = std::__string_hash<char>::operator()[abi:ne200100](v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    if (*(v14 + 16))
    {
      v15 = *(v14 + 8);
      if ((*(v14 + 16) & 2) != 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
      if ((*(v14 + 16) & 2) != 0)
      {
LABEL_26:
        v16 = *(v14 + 12);
LABEL_29:
        v14 = v16 ^ v15;
        goto LABEL_30;
      }
    }

    v16 = 0;
    goto LABEL_29;
  }

LABEL_30:
  v17 = *(this + 4);
  if (!v17)
  {
    goto LABEL_37;
  }

  if (*(v17 + 16))
  {
    v18 = *(v17 + 8);
    if ((*(v17 + 16) & 2) != 0)
    {
      goto LABEL_33;
    }

LABEL_35:
    v19 = 0;
    goto LABEL_36;
  }

  v18 = 0;
  if ((*(v17 + 16) & 2) == 0)
  {
    goto LABEL_35;
  }

LABEL_33:
  v19 = *(v17 + 12);
LABEL_36:
  v17 = v19 ^ v18;
LABEL_37:
  if (v11)
  {
    v20 = *(this + 1);
    if (v20 == 0.0)
    {
      v20 = 0.0;
    }
  }

  else
  {
    v20 = 0.0;
  }

  v21 = *(this + 2);
  if (v21)
  {
    if (*(v21 + 12))
    {
      v21 = *(v21 + 8);
    }

    else
    {
      v21 = 0;
    }
  }

  return v9 ^ v6 ^ v12 ^ v13 ^ v14 ^ v17 ^ *&v20 ^ v21;
}

uint64_t sirinluexternal::UserParse::makeIdA(uint64_t this)
{
  if (!*(this + 24))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserParse::makeRepetitionResult(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserParse::makeParser(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserParse::makeCorrectionOutcome(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::RewriteUtterance::formatText(sirinluinternal::RewriteUtterance *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "asr_id");
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "asr_utterance_tokens");
  }

  if (*(this + 80))
  {
    PB::TextFormatter::format(a2, "confidence", *(this + 5));
  }

  v9 = *(this + 6);
  v10 = *(this + 7);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "nlu_internal_tokens");
  }

  if (*(this + 9))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::RewriteUtterance::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 72))
  {
    this = PB::Writer::write();
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  if (*(v3 + 80))
  {
    this = PB::Writer::write(a2, *(v3 + 40));
  }

  v9 = *(v3 + 48);
  v8 = *(v3 + 56);
  while (v9 != v8)
  {
    v10 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  return this;
}

uint64_t sirinluinternal::RewriteUtterance::readFrom(sirinluinternal::RewriteUtterance *this, PB::Reader *a2)
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
    if ((v10 >> 3) <= 3)
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
        case 4:
          operator new();
        case 5:
          *(this + 80) |= 1u;
          v23 = *(a2 + 1);
          if (v23 <= 0xFFFFFFFFFFFFFFF7 && v23 + 8 <= *(a2 + 2))
          {
            *(this + 5) = *(*a2 + v23);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_34;
        case 6:
          PB::PtrVector<sirinluinternal::Token>::emplace_back<>();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v25 = 0;
      return v25 & 1;
    }

LABEL_34:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v25 = v4 ^ 1;
  return v25 & 1;
}

void sirinluinternal::RewriteUtterance::~RewriteUtterance(sirinluinternal::RewriteUtterance *this)
{
  sirinluinternal::RewriteUtterance::~RewriteUtterance(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878938;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v4 = (this + 48);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 2))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 2);
    operator delete(*(this + 2));
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::RewriteUtterance::RewriteUtterance(sirinluinternal::RewriteUtterance *this)
{
  *this = &unk_1F4878938;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

{
  *this = &unk_1F4878938;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

uint64_t sirinluinternal::RewriteUtterance::RewriteUtterance(uint64_t this, const sirinluinternal::RewriteUtterance *a2)
{
  *this = &unk_1F4878938;
  *(this + 8) = 0u;
  *(this + 48) = 0u;
  *(this + 24) = 0u;
  *(this + 64) = 0u;
  *(this + 80) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    operator new();
  }

  if (*(a2 + 80))
  {
    v4 = *(a2 + 5);
    *(this + 80) |= 1u;
    *(this + 40) = v4;
  }

  v5 = *(a2 + 6);
  if (v5 != *(a2 + 7))
  {
    v6 = *v5;
    PB::PtrVector<sirinluinternal::Token>::emplace_back<sirinluinternal::Token const&>();
  }

  return this;
}

uint64_t sirinluinternal::RewriteUtterance::operator=(uint64_t a1, const sirinluinternal::RewriteUtterance *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::RewriteUtterance::RewriteUtterance(v11, a2);
    v3 = v13;
    v4 = *(a1 + 8);
    *(a1 + 8) = v12;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v12 = v4;
    v13 = v5;
    *&v3 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v3;
    v6 = v16;
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    *(a1 + 48) = v15;
    *(a1 + 64) = v6;
    v9 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v9;
    v15 = v7;
    v16 = v8;
    sirinluinternal::RewriteUtterance::~RewriteUtterance(v11);
  }

  return a1;
}

double sirinluinternal::swap(sirinluinternal *this, sirinluinternal::RewriteUtterance *a2, sirinluinternal::RewriteUtterance *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v8;
  result = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = result;
  v10 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v11;
  v12 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v12;
  return result;
}

uint64_t sirinluinternal::RewriteUtterance::RewriteUtterance(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878938;
  *(a1 + 48) = 0u;
  v4 = (a1 + 48);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 72);
  *(a2 + 72) = 0;
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  v9 = (a1 + 16);
  if (*(a1 + 16))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 16));
    operator delete(*v9);
    *v9 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return a1;
}

uint64_t sirinluinternal::RewriteUtterance::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::RewriteUtterance::RewriteUtterance(v11, a2);
    v3 = v13;
    v4 = *(a1 + 8);
    *(a1 + 8) = v12;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v12 = v4;
    v13 = v5;
    *&v3 = *(a1 + 40);
    *(a1 + 40) = v14;
    v14 = v3;
    v6 = v16;
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    *(a1 + 48) = v15;
    *(a1 + 64) = v6;
    v9 = *(a1 + 80);
    *(a1 + 80) = v17;
    v17 = v9;
    v15 = v7;
    v16 = v8;
    sirinluinternal::RewriteUtterance::~RewriteUtterance(v11);
  }

  return a1;
}

BOOL sirinluinternal::RewriteUtterance::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 72);
  v7 = *(a2 + 72);
  if (!v6)
  {
    if (!v7)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (!v7)
  {
    return 0;
  }

  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  v10 = *(v7 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 8);
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? *(a1 + 72) : *v6;
  v13 = v11 >= 0 ? *(a2 + 72) : *v7;
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

LABEL_23:
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  v16 = *(a2 + 16);
  if (v14 - v15 != *(a2 + 24) - v16)
  {
    return 0;
  }

  while (v15 != v14)
  {
    if (!sirinluinternal::RewriteToken::operator==(*v15, *v16))
    {
      return 0;
    }

    ++v15;
    ++v16;
  }

  v17 = *(a2 + 80);
  if (*(a1 + 80))
  {
    if ((*(a2 + 80) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (*(a2 + 80))
  {
    return 0;
  }

  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a2 + 48);
  v21 = *(a2 + 56);

  return PB::PtrVector<sirinluinternal::Token>::operator==(v18, v19, v20, v21);
}

unint64_t sirinluinternal::RewriteUtterance::hash_value(sirinluinternal::RewriteUtterance *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 24);
LABEL_10:
  v6 = v4 ^ v3 ^ v5;
LABEL_11:
  v7 = *(this + 9);
  if (v7)
  {
    v8 = std::__string_hash<char>::operator()[abi:ne200100](v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 2);
  v10 = *(this + 3);
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = *v9++;
      v11 ^= sirinluinternal::RewriteToken::hash_value(v12);
    }

    while (v9 != v10);
  }

  if (*(this + 80))
  {
    if (*(this + 5) == 0.0)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(this + 5);
    }
  }

  else
  {
    v13 = 0;
  }

  v15 = *(this + 6);
  v14 = *(this + 7);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v17 = *v15++;
      v16 ^= sirinluinternal::Token::hash_value(v17);
    }

    while (v15 != v14);
  }

  return v8 ^ v6 ^ v11 ^ v13 ^ v16;
}

uint64_t sirinluinternal::RewriteUtterance::makeAsrId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::PLUMSpanData::formatText(sirinluinternal::PLUMSpanData *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 16))
  {
    PB::TextFormatter::format(a2, "score", *(this + 1));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::PLUMSpanData::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 16))
  {
    return PB::Writer::write(a2, *(this + 8));
  }

  return this;
}

uint64_t sirinluinternal::PLUMSpanData::readFrom(sirinluinternal::PLUMSpanData *this, PB::Reader *a2)
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
          goto LABEL_23;
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
        *(this + 16) |= 1u;
        v2 = *(a2 + 1);
        if (v2 <= 0xFFFFFFFFFFFFFFF7 && v2 + 8 <= *(a2 + 2))
        {
          *(this + 1) = *(*a2 + v2);
          v2 = *(a2 + 1) + 8;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_23:
        if (!PB::Reader::skip(a2))
        {
          v22 = 0;
          return v22 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
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
        goto LABEL_23;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void sirinluinternal::PLUMSpanData::~PLUMSpanData(sirinluinternal::PLUMSpanData *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluinternal::PLUMSpanData::PLUMSpanData(uint64_t this)
{
  *this = &unk_1F4878988;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4878988;
  *(this + 16) = 0;
  return this;
}

double sirinluinternal::PLUMSpanData::PLUMSpanData(sirinluinternal::PLUMSpanData *this, const sirinluinternal::PLUMSpanData *a2)
{
  *this = &unk_1F4878988;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    result = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 1) = result;
  }

  return result;
}

{
  *this = &unk_1F4878988;
  *(this + 4) = 0;
  if (*(a2 + 16))
  {
    result = *(a2 + 1);
    *(this + 16) = 1;
    *(this + 1) = result;
  }

  return result;
}

uint64_t sirinluinternal::PLUMSpanData::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_1F4878988;
    v3 = *(a2 + 8);
    v4 = *(a1 + 16);
    *(a1 + 16) = *(a2 + 16) & 1;
    v8 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v3;
    v7[1] = v5;
    PB::Base::~Base(v7);
  }

  return a1;
}

{
  if (a1 != a2)
  {
    v8[0] = &unk_1F4878988;
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    *(a1 + 16) = v3;
    v9 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v8[1] = v6;
    PB::Base::~Base(v8);
  }

  return a1;
}

double sirinluinternal::swap(sirinluinternal *this, sirinluinternal::PLUMSpanData *a2, sirinluinternal::PLUMSpanData *a3)
{
  v3 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v3;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  return result;
}

double sirinluinternal::PLUMSpanData::PLUMSpanData(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878988;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4878988;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

BOOL sirinluinternal::PLUMSpanData::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = (*(a2 + 16) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 16) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t sirinluinternal::PLUMSpanData::hash_value(sirinluinternal::PLUMSpanData *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 0;
  }

  if (*(this + 1) == 0.0)
  {
    return 0;
  }

  return *(this + 1);
}

uint64_t sirinluexternal::RewriteMessage::formatText(sirinluexternal::RewriteMessage *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 20))
  {
    v5 = *(this + 4);
    PB::TextFormatter::format(a2, "rewrite_type");
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::RewriteMessage::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 20))
  {
    v4 = *(this + 16);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t sirinluexternal::RewriteMessage::readFrom(sirinluexternal::RewriteMessage *this, PB::Reader *a2)
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
          goto LABEL_28;
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
        operator new();
      }

      if ((v10 >> 3) == 1)
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
LABEL_28:
        if (!PB::Reader::skip(a2))
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
        goto LABEL_28;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_47:
  v38 = v4 ^ 1;
  return v38 & 1;
}

void sirinluexternal::RewriteMessage::~RewriteMessage(sirinluexternal::RewriteMessage *this)
{
  sirinluexternal::RewriteMessage::~RewriteMessage(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F48789D8;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

void *sirinluexternal::RewriteMessage::RewriteMessage(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48789D8;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F48789D8;
  return this;
}

uint64_t sirinluexternal::RewriteMessage::RewriteMessage(uint64_t this, const sirinluexternal::RewriteMessage *a2)
{
  *this = &unk_1F48789D8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  if (*(a2 + 20))
  {
    v2 = *(a2 + 4);
    *(this + 20) = 1;
    *(this + 16) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

const sirinluexternal::RewriteMessage *sirinluexternal::RewriteMessage::operator=(const sirinluexternal::RewriteMessage *a1, const sirinluexternal::RewriteMessage *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RewriteMessage::RewriteMessage(v6, a2);
    v3 = *(a1 + 2);
    *(a1 + 2) = v8;
    v8 = v3;
    v4 = *(a1 + 1);
    *(a1 + 1) = v7;
    v7 = v4;
    sirinluexternal::RewriteMessage::~RewriteMessage(v6);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::RewriteMessage *a2, sirinluexternal::RewriteMessage *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

uint64_t sirinluexternal::RewriteMessage::RewriteMessage(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48789D8;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

uint64_t sirinluexternal::RewriteMessage::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RewriteMessage::RewriteMessage(v6, a2);
    v3 = *(a1 + 16);
    *(a1 + 16) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluexternal::RewriteMessage::~RewriteMessage(v6);
  }

  return a1;
}

BOOL sirinluexternal::RewriteMessage::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (*(a1 + 20))
  {
    if ((*(a2 + 20) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 20))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v4 == 0;
  if (!v3)
  {
    return result;
  }

  if (!v4)
  {
    return 0;
  }

  v6 = *(v3 + 23);
  if (v6 >= 0)
  {
    v7 = *(v3 + 23);
  }

  else
  {
    v7 = *(v3 + 8);
  }

  v8 = *(v4 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(v4 + 8);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? v3 : *v3;
  v11 = v9 >= 0 ? *(a2 + 8) : *v4;
  return !memcmp(v10, v11, v7);
}

unint64_t sirinluexternal::RewriteMessage::hash_value(sirinluexternal::RewriteMessage *this)
{
  if (*(this + 20))
  {
    v1 = *(this + 4);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v2 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  return v2 ^ v1;
}

uint64_t sirinluexternal::RRMetadata::formatText(sirinluexternal::RRMetadata *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "bounding_box");
  }

  if (*(this + 44))
  {
    v6 = *(this + 10);
    PB::TextFormatter::format(a2, "data_source");
  }

  v7 = *(this + 2);
  v8 = *(this + 3);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "surrounding_texts");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::RRMetadata::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  if (*(v3 + 44))
  {
    v8 = *(v3 + 40);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluexternal::RRMetadata::readFrom(sirinluexternal::RRMetadata *this, PB::Reader *a2)
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

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_48;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 44) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v34 = (v25 + v24);
          v18 = v23 >= v24;
          v35 = v23 - v24;
          if (!v18)
          {
            v35 = 0;
          }

          v36 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_43;
            }

            v37 = *v34;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_39:
              LODWORD(v28) = 0;
              goto LABEL_43;
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
              goto LABEL_39;
            }
          }
        }

LABEL_43:
        *(this + 10) = v28;
      }

      else
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 1)
        {
          operator new();
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_48;
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
  }

LABEL_48:
  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluexternal::RRMetadata::~RRMetadata(sirinluexternal::RRMetadata *this)
{
  sirinluexternal::RRMetadata::~RRMetadata(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878A28;
  v2 = (this + 16);
  if (*(this + 2))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 2);
    operator delete(*v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::RRMetadata::RRMetadata(sirinluexternal::RRMetadata *this)
{
  *this = &unk_1F4878A28;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4878A28;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t sirinluexternal::RRMetadata::RRMetadata(uint64_t this, const sirinluexternal::RRMetadata *a2)
{
  *this = &unk_1F4878A28;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    operator new();
  }

  if (*(a2 + 44))
  {
    v4 = *(a2 + 10);
    *(this + 44) |= 1u;
    *(this + 40) = v4;
  }

  return this;
}

uint64_t sirinluexternal::RRMetadata::operator=(uint64_t a1, const sirinluexternal::RRMetadata *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RRMetadata::RRMetadata(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    *&v4 = *(a1 + 40);
    *(a1 + 40) = v9;
    v9 = v4;
    sirinluexternal::RRMetadata::~RRMetadata(&v6);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::RRMetadata *a2, sirinluexternal::RRMetadata *a3)
{
  v3 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v7;
  LODWORD(v7) = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v7;
  return this;
}

uint64_t sirinluexternal::RRMetadata::RRMetadata(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878A28;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = (a1 + 16);
  if (*(a1 + 16))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 16));
    operator delete(*v6);
    *v6 = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sirinluexternal::RRMetadata::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RRMetadata::RRMetadata(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    *&v4 = *(a1 + 40);
    *(a1 + 40) = v9;
    v9 = v4;
    sirinluexternal::RRMetadata::~RRMetadata(&v6);
  }

  return a1;
}

BOOL sirinluexternal::RRMetadata::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !sirinluexternal::RRBoundingBox::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a2 + 16);
  if (v6 - v7 != *(a2 + 24) - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    result = sirinluexternal::RRSurroundingText::operator==(*v7, *v8);
    if (!result)
    {
      return result;
    }

    ++v7;
    ++v8;
  }

  result = (*(a2 + 44) & 1) == 0;
  if (*(a1 + 44))
  {
    return (*(a2 + 44) & 1) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

uint64_t sirinluexternal::RRMetadata::hash_value(sirinluexternal::RRMetadata *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = sirinluexternal::RRBoundingBox::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= sirinluexternal::RRSurroundingText::hash_value(v7);
    }

    while (v4 != v5);
  }

  if (*(this + 44))
  {
    v8 = *(this + 10);
  }

  else
  {
    v8 = 0;
  }

  return v6 ^ v3 ^ v8;
}

uint64_t sirinluexternal::RRMetadata::makeBoundingBox(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::formatText(sirinluinternaluaap_parser::UaaPParserRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "embeddings");
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "matching_spans");
  }

  if (*(this + 72))
  {
    v9 = *(this + 5);
    PB::TextFormatter::format(a2, "max_num_parses");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "request_id");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "token_chain");
  }

  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "turn_input");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 56);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 64);
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  if (*(v3 + 72))
  {
    v11 = *(v3 + 40);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::readFrom(sirinluinternaluaap_parser::UaaPParserRequest *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
        case 5:
          operator new();
        case 6:
          *(this + 72) |= 1u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v32 = 0;
            v33 = 0;
            v28 = 0;
            v34 = (v25 + v24);
            v18 = v23 >= v24;
            v35 = v23 - v24;
            if (!v18)
            {
              v35 = 0;
            }

            v36 = v24 + 1;
            while (1)
            {
              if (!v35)
              {
                v28 = 0;
                *(a2 + 24) = 1;
                goto LABEL_53;
              }

              v37 = *v34;
              *(a2 + 1) = v36;
              v28 |= (v37 & 0x7F) << v32;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              ++v34;
              --v35;
              ++v36;
              v14 = v33++ > 8;
              if (v14)
              {
LABEL_49:
                v28 = 0;
                goto LABEL_53;
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
                goto LABEL_49;
              }
            }
          }

LABEL_53:
          *(this + 5) = v28;
          goto LABEL_39;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          operator new();
        case 2:
          operator new();
        case 3:
          operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v39 = 0;
      return v39 & 1;
    }

LABEL_39:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluinternaluaap_parser::UaaPParserRequest::~UaaPParserRequest(sirinluinternaluaap_parser::UaaPParserRequest *this)
{
  sirinluinternaluaap_parser::UaaPParserRequest::~UaaPParserRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878A78;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 6);
  *(this + 6) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v6 = (this + 16);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

double sirinluinternaluaap_parser::UaaPParserRequest::UaaPParserRequest(sirinluinternaluaap_parser::UaaPParserRequest *this)
{
  *this = &unk_1F4878A78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 18) = 0;
  return result;
}

{
  *this = &unk_1F4878A78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 18) = 0;
  return result;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::UaaPParserRequest(uint64_t this, const sirinluinternaluaap_parser::UaaPParserRequest *a2)
{
  *(this + 8) = 0u;
  *(this + 48) = 0;
  *this = &unk_1F4878A78;
  *(this + 24) = 0u;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  if (*(a2 + 6))
  {
    operator new();
  }

  if (*(a2 + 7))
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
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 72))
  {
    v4 = *(a2 + 5);
    *(this + 72) |= 1u;
    *(this + 40) = v4;
  }

  return this;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::operator=(uint64_t a1, const sirinluinternaluaap_parser::UaaPParserRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternaluaap_parser::UaaPParserRequest::UaaPParserRequest(&v10, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v3;
    v4 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v6;
    v7 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    sirinluinternaluaap_parser::UaaPParserRequest::~UaaPParserRequest(&v10);
  }

  return a1;
}

uint64_t sirinluinternaluaap_parser::swap(uint64_t this, sirinluinternaluaap_parser::UaaPParserRequest *a2, sirinluinternaluaap_parser::UaaPParserRequest *a3)
{
  v3 = *(this + 72);
  *(this + 72) = *(a2 + 18);
  *(a2 + 18) = v3;
  v4 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 32);
  v10 = *(this + 40);
  v11 = *(a2 + 5);
  *(this + 32) = *(a2 + 4);
  *(this + 40) = v11;
  *(a2 + 4) = v9;
  v12 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v12;
  *(a2 + 5) = v10;
  return this;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::UaaPParserRequest(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F4878A78;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = 0;
  v5 = *(a2 + 48);
  *(a2 + 48) = 0;
  v6 = *(a1 + 48);
  *(a1 + 48) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 56);
  *(a2 + 56) = 0;
  v8 = *(a1 + 56);
  *(a1 + 56) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v11 = *(a2 + 64);
  *(a2 + 64) = 0;
  v12 = *(a1 + 64);
  *(a1 + 64) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternaluaap_parser::UaaPParserRequest::UaaPParserRequest(&v10, a2);
    v3 = *(a1 + 72);
    *(a1 + 72) = v16;
    v16 = v3;
    v4 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v12;
    v12 = v6;
    v7 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v7;
    v8 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v8;
    sirinluinternaluaap_parser::UaaPParserRequest::~UaaPParserRequest(&v10);
  }

  return a1;
}

BOOL sirinluinternaluaap_parser::UaaPParserRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = *(a2 + 48);
  if (v4)
  {
    if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a2 + 56);
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

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  if (v8)
  {
    if (!v9 || !sirinluinternal::NLv4EmbeddingTensor::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 16), *(a2 + 16), *(a2 + 24));
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 64);
  v12 = *(a2 + 64);
  if (!v11)
  {
    if (!v12)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (!v12 || !sirinluexternal::TurnInput::operator==(v11, v12))
  {
    return 0;
  }

LABEL_24:
  result = (*(a2 + 72) & 1) == 0;
  if (*(a1 + 72))
  {
    return (*(a2 + 72) & 1) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

unint64_t sirinluinternaluaap_parser::UaaPParserRequest::hash_value(sirinluinternaluaap_parser::UaaPParserRequest *this)
{
  v2 = *(this + 6);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 24);
LABEL_10:
  v6 = v4 ^ v3 ^ v5;
LABEL_11:
  v7 = *(this + 7);
  if (v7)
  {
    v8 = sirinluinternal::TokenChain::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 1);
  if (v9)
  {
    v10 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 2);
  v12 = *(this + 3);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v11++;
      v13 ^= sirinluinternal::MatchingSpan::hash_value(v14);
    }

    while (v11 != v12);
  }

  v15 = *(this + 8);
  if (v15)
  {
    v15 = sirinluexternal::TurnInput::hash_value(v15);
  }

  if (*(this + 72))
  {
    v16 = *(this + 5);
  }

  else
  {
    v16 = 0;
  }

  return v8 ^ v6 ^ v10 ^ v15 ^ v16 ^ v13;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::makeTokenChain(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::makeEmbeddings(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternaluaap_parser::UaaPParserRequest::makeTurnInput(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERCustomReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___SIRINLUEXTERNALNLU_ROUTERCustom__typeName;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___SIRINLUEXTERNALNLU_ROUTERCustom__bundleIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTEREntityIdentifierValueReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERTypeIdentifier);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERTypeIdentifierReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
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

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERQueryDecorationOutputReadFrom(void *a1, void *a2)
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
        LOBYTE(v17) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 11)
        {
          if (v13 == 12)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERSpanMatchedEntity);
            [a1 addSpans:v14];
            v17 = 0;
            v18 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERSpanMatchedEntityReadFrom(&v14->super.super.isa, a2))
            {
LABEL_51:

              return 0;
            }

            goto LABEL_44;
          }

          if (v13 == 24)
          {
            v14 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERRetrievedContext);
            [a1 addContext:v14];
            goto LABEL_35;
          }
        }

        else
        {
          if (v13 == 7)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addOriginalRankedSpans:v14];
            }

            goto LABEL_45;
          }

          if (v13 == 8)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addAdjustedRankedSpans:v14];
            }

            goto LABEL_45;
          }
        }
      }

      else if (v13 > 4)
      {
        if (v13 == 5)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addOriginalRankedTools:v14];
          }

          goto LABEL_45;
        }

        if (v13 == 6)
        {
          v14 = PBReaderReadString();
          if (v14)
          {
            [a1 addAdjustedRankedTools:v14];
          }

          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERRetrievedContext);
          [a1 addRequiredContext:v14];
LABEL_35:
          v17 = 0;
          v18 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERRetrievedContextReadFrom(v14, a2))
          {
            goto LABEL_51;
          }

LABEL_44:
          PBReaderRecallMark();
LABEL_45:

          goto LABEL_46;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERRetrievedContext);
          [a1 addUtteranceContext:v14];
          goto LABEL_35;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERNLParseResponseReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALUserParse);
        [a1 addUserParses:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUserParseReadFrom(v13, a2))
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

uint64_t SIRINLUEXTERNALNLU_ROUTERAppReadFrom(uint64_t a1, void *a2)
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

uint64_t SIRINLUEXTERNALNLU_ROUTERNLRouterTurnProbingResultReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERNLParseResponse);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERNLParseResponseReadFrom(v13, a2))
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

    v13 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERPommesResponse);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERPommesResponseReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERRetrievedContextReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
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

      if ((v12 >> 3) == 5)
      {
        v20 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERTypedValue);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERTypedValueReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 3)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_36;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

LABEL_36:
        *(a1 + 8) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERTypedValueReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERPrimitiveValue);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERPrimitiveValueReadFrom(v13, a2))
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

uint64_t SIRINLUEXTERNALNLU_ROUTERPommesResponseReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 4)
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

void sub_1C8BAB2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x1CCA7EC50](v7, 0x1030C40E9F947FBLL);
  apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void sub_1C8BAB518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t siricommon::FloatValue::formatText(siricommon::FloatValue *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 12))
  {
    PB::TextFormatter::format(a2, "value", *(this + 2));
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t siricommon::FloatValue::writeTo(uint64_t this, PB::Writer *a2)
{
  if (*(this + 12))
  {
    return PB::Writer::write(a2, *(this + 8));
  }

  return this;
}

uint64_t siricommon::FloatValue::readFrom(siricommon::FloatValue *this, PB::Reader *a2)
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
          goto LABEL_23;
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
        if (v2 <= 0xFFFFFFFFFFFFFFFBLL && v2 + 4 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v2);
          v2 = *(a2 + 1) + 4;
          *(a2 + 1) = v2;
        }

        else
        {
          *(a2 + 24) = 1;
        }
      }

      else
      {
LABEL_23:
        if (!PB::Reader::skip(a2))
        {
          v22 = 0;
          return v22 & 1;
        }

        v2 = *(a2 + 1);
      }

      v3 = *(a2 + 2);
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
        goto LABEL_23;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v22 = v4 ^ 1;
  return v22 & 1;
}

void siricommon::FloatValue::~FloatValue(siricommon::FloatValue *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t siricommon::FloatValue::FloatValue(uint64_t this)
{
  *this = &unk_1F4878B28;
  *(this + 12) = 0;
  return this;
}

{
  *this = &unk_1F4878B28;
  *(this + 12) = 0;
  return this;
}

float siricommon::FloatValue::FloatValue(siricommon::FloatValue *this, const siricommon::FloatValue *a2)
{
  *this = &unk_1F4878B28;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

{
  *this = &unk_1F4878B28;
  *(this + 3) = 0;
  if (*(a2 + 12))
  {
    result = *(a2 + 2);
    *(this + 12) = 1;
    *(this + 2) = result;
  }

  return result;
}

uint64_t siricommon::FloatValue::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7 = &unk_1F4878B28;
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
    v8 = &unk_1F4878B28;
    v3 = *(a2 + 12);
    *(a2 + 12) = 0;
    v4 = *(a2 + 8);
    v5 = *(a1 + 12);
    *(a1 + 12) = v3;
    v10 = v5;
    v6 = *(a1 + 8);
    *(a1 + 8) = v4;
    v9 = v6;
    PB::Base::~Base(&v8);
  }

  return a1;
}

float siricommon::swap(siricommon *this, siricommon::FloatValue *a2, siricommon::FloatValue *a3)
{
  v3 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v3;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  return result;
}

float siricommon::FloatValue::FloatValue(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878B28;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4878B28;
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

BOOL siricommon::FloatValue::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 12);
  result = (*(a2 + 12) & 1) == 0;
  if (v3)
  {
    return (*(a2 + 12) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

float siricommon::FloatValue::hash_value(siricommon::FloatValue *this)
{
  if (*(this + 12))
  {
    return *(this + 2);
  }

  return result;
}

uint64_t sirinluinternal::NluRequestRule::formatText(sirinluinternal::NluRequestRule *this, PB::TextFormatter *a2, const char *a3)
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

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 4);
  v6 = *(this + 5);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "turn_input_rules");
  }

  if (*(this + 7))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

void *sirinluinternal::NluRequestRule::writeTo(void *this, PB::Writer *a2)
{
  v3 = this;
  if (this[2])
  {
    this = PB::Writer::write();
  }

  if (v3[3])
  {
    this = PB::Writer::write();
  }

  if (v3[1])
  {
    this = PB::Writer::write();
  }

  if (v3[7])
  {
    this = PB::Writer::write();
  }

  v5 = v3[4];
  v4 = v3[5];
  while (v5 != v4)
  {
    v6 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  return this;
}

uint64_t sirinluinternal::NluRequestRule::readFrom(sirinluinternal::NluRequestRule *this, PB::Reader *a2)
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
        goto LABEL_35;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) <= 2)
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

      else
      {
        switch(v21)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
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
        goto LABEL_35;
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

LABEL_35:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluinternal::NluRequestRule::~NluRequestRule(sirinluinternal::NluRequestRule *this)
{
  sirinluinternal::NluRequestRule::~NluRequestRule(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878B78;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  if (*(this + 4))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 4);
    operator delete(*(this + 4));
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::NluRequestRule::NluRequestRule(sirinluinternal::NluRequestRule *this)
{
  *this = &unk_1F4878B78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F4878B78;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

uint64_t sirinluinternal::NluRequestRule::NluRequestRule(uint64_t this, const sirinluinternal::NluRequestRule *a2)
{
  *this = &unk_1F4878B78;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0;
  if (*(a2 + 2))
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

  if (*(a2 + 7))
  {
    operator new();
  }

  v2 = *(a2 + 4);
  if (v2 != *(a2 + 5))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::NluRequestRule::operator=(uint64_t a1, const sirinluinternal::NluRequestRule *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::NluRequestRule::NluRequestRule(&v8, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    sirinluinternal::NluRequestRule::~NluRequestRule(&v8);
  }

  return a1;
}

void *sirinluinternal::swap(void *this, sirinluinternal::NluRequestRule *a2, sirinluinternal::NluRequestRule *a3)
{
  v3 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v6;
  v7 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v9;
  return this;
}

uint64_t sirinluinternal::NluRequestRule::NluRequestRule(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878B78;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 24);
  *(a2 + 24) = 0;
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  v11 = *(a2 + 56);
  *(a2 + 56) = 0;
  v12 = *(a1 + 56);
  *(a1 + 56) = v11;
  if (v12)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v12);
  }

  v13 = (a1 + 32);
  if (*(a1 + 32))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 32));
    operator delete(*v13);
    *v13 = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return a1;
}

uint64_t sirinluinternal::NluRequestRule::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::NluRequestRule::NluRequestRule(&v8, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v3;
    v4 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v5;
    v6 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v6;
    sirinluinternal::NluRequestRule::~NluRequestRule(&v8);
  }

  return a1;
}

BOOL sirinluinternal::NluRequestRule::operator==(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = a2[2];
  if (v4)
  {
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
    v11 = v9 >= 0 ? a2[2] : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 24);
  v14 = a2[3];
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

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

    if (v16 != v17)
    {
      return 0;
    }

    v19 = v15 >= 0 ? *(a1 + 24) : *v13;
    v20 = v18 >= 0 ? a2[3] : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v21 = *(a1 + 8);
  v22 = a2[1];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *(v21 + 23);
    if (v23 >= 0)
    {
      v24 = *(v21 + 23);
    }

    else
    {
      v24 = *(v21 + 8);
    }

    v25 = *(v22 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v22 + 8);
    }

    if (v24 != v25)
    {
      return 0;
    }

    v27 = v23 >= 0 ? *(a1 + 8) : *v21;
    v28 = v26 >= 0 ? a2[1] : *v22;
    if (memcmp(v27, v28, v24))
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v29 = *(a1 + 56);
  v30 = a2[7];
  if (!v29)
  {
    if (!v30)
    {
      goto LABEL_58;
    }

    return 0;
  }

  if (!v30 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v29, v30))
  {
    return 0;
  }

LABEL_58:
  v31 = a2[4];
  v32 = a2[5];

  return PB::PtrVector<sirinluinternal::TurnInputRule>::operator==((a1 + 32), v31, v32);
}

BOOL PB::PtrVector<sirinluinternal::TurnInputRule>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a3 - a2)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v5 = a2;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v5++;
    result = sirinluinternal::TurnInputRule::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

unint64_t sirinluinternal::NluRequestRule::hash_value(sirinluinternal::NluRequestRule *this)
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

  v4 = *(this + 3);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 1);
  if (v6)
  {
    v7 = std::__string_hash<char>::operator()[abi:ne200100](v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(this + 7);
  if (v8)
  {
    v9 = std::__string_hash<char>::operator()[abi:ne200100](v8);
  }

  else
  {
    v9 = 0;
  }

  v11 = *(this + 4);
  v10 = *(this + 5);
  if (v11 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v11++;
      v12 ^= sirinluinternal::TurnInputRule::hash_value(v13);
    }

    while (v11 != v10);
  }

  return v5 ^ v3 ^ v7 ^ v9 ^ v12;
}

uint64_t SIRINLUEXTERNALUsoEntitySpanReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            *(a1 + 96) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (v33 & 0x7F) << v17;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_79;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_79:
            v31 = 40;
            goto LABEL_84;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(SIRICOMMONStringValue);
            v16 = 48;
            goto LABEL_54;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              *(a1 + 96) |= 2u;
              while (1)
              {
                LOBYTE(v33) = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v33 & 0x7F) << v24;
                if ((v33 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  v23 = 0;
                  goto LABEL_83;
                }
              }

              if ([a2 hasError])
              {
                v23 = 0;
              }

              else
              {
                v23 = v26;
              }

LABEL_83:
              v31 = 80;
LABEL_84:
              *(a1 + v31) = v23;
              goto LABEL_72;
            case 4:
              v14 = objc_alloc_init(SIRICOMMONStringValue);
              v16 = 24;
              goto LABEL_54;
            case 5:
              v14 = objc_alloc_init(SIRINLUEXTERNALMatchInfo);
              objc_storeStrong((a1 + 32), v14);
              v33 = 0;
              v34 = 0;
              if (!PBReaderPlaceMark() || !SIRINLUEXTERNALMatchInfoReadFrom(v14, a2))
              {
LABEL_86:

                return 0;
              }

              goto LABEL_71;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = objc_alloc_init(SIRINLUEXTERNALAsrAlternative);
            [a1 addAlternatives:v14];
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALAsrAlternativeReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_71;
          case 0xA:
            v14 = objc_alloc_init(SIRICOMMONStringValue);
            v16 = 56;
LABEL_54:
            objc_storeStrong((a1 + v16), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_71;
          case 0xB:
            v14 = objc_alloc_init(SIRINLUEXTERNALPayloadAttachmentInfo);
            objc_storeStrong((a1 + 64), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALPayloadAttachmentInfoReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_71;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = objc_alloc_init(SIRINLUEXTERNALSpanProperty);
            [a1 addProperties:v14];
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSpanPropertyReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

            goto LABEL_71;
          case 7:
            v14 = objc_alloc_init(SIRICOMMONUInt32Value);
            v15 = 88;
LABEL_50:
            objc_storeStrong((a1 + v15), v14);
            v33 = 0;
            v34 = 0;
            if (!PBReaderPlaceMark() || !SIRICOMMONUInt32ValueReadFrom(v14, a2))
            {
              goto LABEL_86;
            }

LABEL_71:
            PBReaderRecallMark();

            goto LABEL_72;
          case 8:
            v14 = objc_alloc_init(SIRICOMMONUInt32Value);
            v15 = 16;
            goto LABEL_50;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_72:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternaltokenizer::TokenizerRequest::formatText(sirinluinternaltokenizer::TokenizerRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "asrId");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternaltokenizer::TokenizerRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 24))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 16))
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

uint64_t sirinluinternaltokenizer::TokenizerRequest::readFrom(sirinluinternaltokenizer::TokenizerRequest *this, PB::Reader *a2)
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
        operator new();
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

void sirinluinternaltokenizer::TokenizerRequest::~TokenizerRequest(sirinluinternaltokenizer::TokenizerRequest *this)
{
  sirinluinternaltokenizer::TokenizerRequest::~TokenizerRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878BC8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

void *sirinluinternaltokenizer::TokenizerRequest::TokenizerRequest(void *this)
{
  *this = &unk_1F4878BC8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F4878BC8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluinternaltokenizer::TokenizerRequest::TokenizerRequest(void *this, const sirinluinternaltokenizer::TokenizerRequest *a2)
{
  *this = &unk_1F4878BC8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  if (*(a2 + 3))
  {
    operator new();
  }

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

uint64_t sirinluinternaltokenizer::TokenizerRequest::operator=(uint64_t a1, const sirinluinternaltokenizer::TokenizerRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternaltokenizer::TokenizerRequest::TokenizerRequest(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluinternaltokenizer::TokenizerRequest::~TokenizerRequest(&v6);
  }

  return a1;
}

void *sirinluinternaltokenizer::swap(void *this, sirinluinternaltokenizer::TokenizerRequest *a2, sirinluinternaltokenizer::TokenizerRequest *a3)
{
  v3 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v5;
  return this;
}

void *sirinluinternaltokenizer::TokenizerRequest::TokenizerRequest(void *a1, void *a2)
{
  *a1 = &unk_1F4878BC8;
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  v5 = a2[3];
  a2[3] = 0;
  v6 = a1[3];
  a1[3] = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = a2[2];
  a2[2] = 0;
  v8 = a1[2];
  a1[2] = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  v9 = a2[1];
  a2[1] = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t sirinluinternaltokenizer::TokenizerRequest::operator=(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    sirinluinternaltokenizer::TokenizerRequest::TokenizerRequest(&v6, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v4;
    sirinluinternaltokenizer::TokenizerRequest::~TokenizerRequest(&v6);
  }

  return a1;
}

BOOL sirinluinternaltokenizer::TokenizerRequest::operator==(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a2[3];
  if (v4)
  {
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

    v10 = v6 >= 0 ? a1[3] : *v4;
    v11 = v9 >= 0 ? a2[3] : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = a1[2];
  v14 = a2[2];
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
        v19 = v15 >= 0 ? a1[2] : *v13;
        v20 = v18 >= 0 ? a2[2] : *v14;
        if (!memcmp(v19, v20, v16))
        {
          goto LABEL_37;
        }
      }
    }

    return 0;
  }

  if (v14)
  {
    return 0;
  }

LABEL_37:
  v21 = a1[1];
  v22 = a2[1];
  result = (v21 | v22) == 0;
  if (v21 && v22)
  {
    v23 = a1[1];

    return sirinluexternal::UUID::operator==(v23, v22);
  }

  return result;
}

unint64_t sirinluinternaltokenizer::TokenizerRequest::hash_value(sirinluinternaltokenizer::TokenizerRequest *this)
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
    v4 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  v5 = *(this + 1);
  if (v5)
  {
    if (*(v5 + 28))
    {
      v6 = *(v5 + 8);
      if ((*(v5 + 28) & 2) != 0)
      {
LABEL_9:
        v7 = *(v5 + 16);
        if ((*(v5 + 28) & 4) != 0)
        {
LABEL_10:
          v8 = *(v5 + 24);
LABEL_14:
          v5 = v7 ^ v6 ^ v8;
          return v4 ^ v3 ^ v5;
        }

LABEL_13:
        v8 = 0;
        goto LABEL_14;
      }
    }

    else
    {
      v6 = 0;
      if ((*(v5 + 28) & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    v7 = 0;
    if ((*(v5 + 28) & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  return v4 ^ v3 ^ v5;
}

uint64_t sirinluinternaltokenizer::TokenizerRequest::makeAsrId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALCDMNluRequestReadFrom(id *a1, void *a2)
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
        LOBYTE(v17) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
        objc_storeStrong(a1 + 1, v14);
LABEL_25:
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALTurnInputReadFrom(v14, a2))
        {
LABEL_31:

          return 0;
        }

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SIRINLUEXTERNALRequestID);
        objc_storeStrong(a1 + 3, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v14, a2))
        {
          goto LABEL_31;
        }

LABEL_27:
        PBReaderRecallMark();

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SIRINLUEXTERNALTurnInput);
    [a1 addPreviousTurnInputs:v14];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternalcdm_planner::CdmPlannerRequest::formatText(sirinluexternalcdm_planner::CdmPlannerRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "cdm_planner_request_identifier");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalcdm_planner::CdmPlannerRequest::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluexternalcdm_planner::CdmPlannerRequest::readFrom(sirinluexternalcdm_planner::CdmPlannerRequest *this, PB::Reader *a2)
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

void sirinluexternalcdm_planner::CdmPlannerRequest::~CdmPlannerRequest(sirinluexternalcdm_planner::CdmPlannerRequest *this)
{
  sirinluexternalcdm_planner::CdmPlannerRequest::~CdmPlannerRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878C18;
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

void *sirinluexternalcdm_planner::CdmPlannerRequest::CdmPlannerRequest(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878C18;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878C18;
  return this;
}

void *sirinluexternalcdm_planner::CdmPlannerRequest::CdmPlannerRequest(void *this, const sirinluexternalcdm_planner::CdmPlannerRequest *a2)
{
  *this = &unk_1F4878C18;
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

uint64_t sirinluexternalcdm_planner::CdmPlannerRequest::operator=(uint64_t a1, const sirinluexternalcdm_planner::CdmPlannerRequest *a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm_planner::CdmPlannerRequest::CdmPlannerRequest(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalcdm_planner::CdmPlannerRequest::~CdmPlannerRequest(&v5);
  }

  return a1;
}

uint64_t sirinluexternalcdm_planner::swap(uint64_t this, sirinluexternalcdm_planner::CdmPlannerRequest *a2, sirinluexternalcdm_planner::CdmPlannerRequest *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternalcdm_planner::CdmPlannerRequest::CdmPlannerRequest(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4878C18;
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

uint64_t sirinluexternalcdm_planner::CdmPlannerRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm_planner::CdmPlannerRequest::CdmPlannerRequest(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternalcdm_planner::CdmPlannerRequest::~CdmPlannerRequest(&v5);
  }

  return a1;
}

BOOL sirinluexternalcdm_planner::CdmPlannerRequest::operator==(uint64_t a1, uint64_t a2)
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

    return sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::operator==(v16, v13);
  }

  return result;
}

unint64_t sirinluexternalcdm_planner::CdmPlannerRequest::hash_value(sirinluexternalcdm_planner::CdmPlannerRequest *this)
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
    v4 = sirinluexternalcdm_planner::CDMPlannerRequestIdentifier::hash_value(v4);
  }

  return v4 ^ v3;
}

uint64_t sirinluexternalcdm_planner::CdmPlannerRequest::makeCdmPlannerRequestIdentifier(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALSSUSSUEncodingResultReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_36;
        }

        if (v13 == 4)
        {
          if ((v12 & 7) == 2)
          {
            v26[0] = 0;
            v26[1] = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v17 = [a2 position];
              if (v17 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v27 = 0;
              v18 = [a2 position] + 4;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v27 range:{objc_msgSend(a2, "position"), 4}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
              }

              else
              {
                [a2 _setError];
              }

              PBRepeatedFloatAdd();
            }

            PBReaderRecallMark();
          }

          else
          {
            LODWORD(v26[0]) = 0;
            v23 = [a2 position] + 4;
            if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 4, v24 <= objc_msgSend(a2, "length")))
            {
              v25 = [a2 data];
              [v25 getBytes:v26 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedFloatAdd();
          }

          goto LABEL_37;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_36;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 40;
LABEL_36:
          v21 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALQUERYREWRITEQRInteractionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(SIRINLUINTERNALQUERYREWRITEQRUtterance);
          [a1 addOriginalUtterances:v21];
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALQUERYREWRITEQRUtteranceReadFrom(v21, a2))
          {
LABEL_58:

            return 0;
          }

          goto LABEL_47;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(SIRINLUINTERNALToken);
          [a1 addSiriResponse:v21];
          v33 = 0;
          v34 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenReadFrom(v21, a2))
          {
            goto LABEL_58;
          }

LABEL_47:
          PBReaderRecallMark();

          goto LABEL_56;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v22 = PBReaderReadString();
            v23 = *(a1 + 16);
            *(a1 + 16) = v22;

            goto LABEL_56;
          case 4:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v33 & 0x7F) << v24;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                LOBYTE(v30) = 0;
                goto LABEL_51;
              }
            }

            v30 = (v26 != 0) & ~[a2 hasError];
LABEL_51:
            *(a1 + 40) = v30;
            goto LABEL_56;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v33) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v33 & 0x7F) << v14;
              if ((v33 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_55;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_55:
            *(a1 + 8) = v20;
            goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_56:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::RewriteHypothesis::formatText(sirinluinternal::RewriteHypothesis *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "asr_id");
  }

  v6 = *(this + 36);
  if (v6)
  {
    PB::TextFormatter::format(a2, "confidence", *(this + 2));
    v6 = *(this + 36);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(this + 8);
    PB::TextFormatter::format(a2, "rewrite_type");
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::RewriteHypothesis::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 24))
  {
    this = PB::Writer::write();
  }

  v5 = *(v3 + 36);
  if (v5)
  {
    this = PB::Writer::write(a2, *(v3 + 16));
    v5 = *(v3 + 36);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v3 + 32);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluinternal::RewriteHypothesis::readFrom(sirinluinternal::RewriteHypothesis *this, PB::Reader *a2)
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
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        *(this + 36) |= 1u;
        v32 = *(a2 + 1);
        if (v32 <= 0xFFFFFFFFFFFFFFF7 && v32 + 8 <= *(a2 + 2))
        {
          *(this + 2) = *(*a2 + v32);
          *(a2 + 1) += 8;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_18;
      }

      if (v22 == 4)
      {
        *(this + 36) |= 2u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v33 = 0;
          v34 = 0;
          v28 = 0;
          v35 = (v25 + v24);
          v18 = v23 >= v24;
          v36 = v23 - v24;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v24 + 1;
          while (1)
          {
            if (!v36)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_51;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v28 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_46:
              LODWORD(v28) = 0;
              goto LABEL_51;
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
              goto LABEL_46;
            }
          }
        }

LABEL_51:
        *(this + 8) = v28;
        goto LABEL_18;
      }
    }

    else
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

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v39 = 0;
      return v39 & 1;
    }

LABEL_18:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluinternal::RewriteHypothesis::~RewriteHypothesis(sirinluinternal::RewriteHypothesis *this)
{
  sirinluinternal::RewriteHypothesis::~RewriteHypothesis(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878C88;
  v2 = *(this + 3);
  *(this + 3) = 0;
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

void *sirinluinternal::RewriteHypothesis::RewriteHypothesis(void *this)
{
  *this = &unk_1F4878C88;
  this[1] = 0;
  this[3] = 0;
  this[4] = 0;
  return this;
}

{
  *this = &unk_1F4878C88;
  this[1] = 0;
  this[3] = 0;
  this[4] = 0;
  return this;
}

uint64_t sirinluinternal::RewriteHypothesis::RewriteHypothesis(uint64_t this, const sirinluinternal::RewriteHypothesis *a2)
{
  *this = &unk_1F4878C88;
  *(this + 8) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = *(a2 + 2);
    *(this + 36) |= 1u;
    *(this + 16) = v3;
    v2 = *(a2 + 36);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 8);
    *(this + 36) |= 2u;
    *(this + 32) = v4;
  }

  return this;
}

const sirinluinternal::RewriteHypothesis *sirinluinternal::RewriteHypothesis::operator=(const sirinluinternal::RewriteHypothesis *a1, const sirinluinternal::RewriteHypothesis *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::RewriteHypothesis::RewriteHypothesis(v8, a2);
    v3 = *(a1 + 1);
    *(a1 + 1) = v9;
    v9 = v3;
    v4 = *(a1 + 3);
    *(a1 + 3) = v11;
    v11 = v4;
    v5 = *(a1 + 2);
    *(a1 + 2) = v10;
    v10 = v5;
    v6 = *(a1 + 4);
    *(a1 + 4) = v12;
    v12 = v6;
    sirinluinternal::RewriteHypothesis::~RewriteHypothesis(v8);
  }

  return a1;
}

double sirinluinternal::swap(sirinluinternal *this, sirinluinternal::RewriteHypothesis *a2, sirinluinternal::RewriteHypothesis *a3)
{
  v3 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  result = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = result;
  LODWORD(v5) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sirinluinternal::RewriteHypothesis::RewriteHypothesis(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878C88;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a2 + 24);
  *(a2 + 24) = 0;
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void *sirinluinternal::RewriteHypothesis::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::RewriteHypothesis::RewriteHypothesis(v8, a2);
    v3 = a1[1];
    a1[1] = v9;
    v9 = v3;
    v4 = a1[3];
    a1[3] = v11;
    v11 = v4;
    v5 = a1[2];
    a1[2] = v10;
    v10 = v5;
    v6 = a1[4];
    a1[4] = v12;
    v12 = v6;
    sirinluinternal::RewriteHypothesis::~RewriteHypothesis(v8);
  }

  return a1;
}

BOOL sirinluinternal::RewriteHypothesis::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v6 + 23);
    if (v8 >= 0)
    {
      v9 = *(v6 + 23);
    }

    else
    {
      v9 = *(v6 + 8);
    }

    v10 = *(v7 + 23);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(v7 + 8);
    }

    if (v9 != v10)
    {
      return 0;
    }

    v12 = v8 >= 0 ? *(a1 + 24) : *v6;
    v13 = v11 >= 0 ? *(a2 + 24) : *v7;
    if (memcmp(v12, v13, v9))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    if ((*(a2 + 36) & 1) == 0)
    {
      goto LABEL_30;
    }

    return 0;
  }

  if ((*(a2 + 36) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

LABEL_30:
  result = (*(a2 + 36) & 2) == 0;
  if ((*(a1 + 36) & 2) != 0)
  {
    return (*(a2 + 36) & 2) != 0 && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

unint64_t sirinluinternal::RewriteHypothesis::hash_value(sirinluinternal::RewriteHypothesis *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 24);
LABEL_10:
  v6 = v4 ^ v3 ^ v5;
LABEL_11:
  v7 = *(this + 3);
  if (v7)
  {
    v7 = std::__string_hash<char>::operator()[abi:ne200100](v7);
  }

  if (*(this + 36))
  {
    v8 = *(this + 2);
    if (v8 == 0.0)
    {
      v8 = 0.0;
    }

    if ((*(this + 36) & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_19:
    v9 = 0;
    return v7 ^ v6 ^ *&v8 ^ v9;
  }

  v8 = 0.0;
  if ((*(this + 36) & 2) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v9 = *(this + 8);
  return v7 ^ v6 ^ *&v8 ^ v9;
}

uint64_t sirinluinternal::RewriteHypothesis::makeAsrId(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::SpanDataForNamedCaptureGroup::formatText(sirinluinternal::SpanDataForNamedCaptureGroup *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 24);
  if (v5)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "target_node_idx");
    v5 = *(this + 24);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 5);
    PB::TextFormatter::format(a2, "target_uda_idx");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::SpanDataForNamedCaptureGroup::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 8))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(v3 + 20);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluinternal::SpanDataForNamedCaptureGroup::readFrom(sirinluinternal::SpanDataForNamedCaptureGroup *this, PB::Reader *a2)
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
        *(this + 24) |= 2u;
        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        v34 = *a2;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v47 = 0;
          v48 = 0;
          v37 = 0;
          v49 = (v34 + v33);
          v18 = v32 >= v33;
          v50 = v32 - v33;
          if (!v18)
          {
            v50 = 0;
          }

          v51 = v33 + 1;
          while (1)
          {
            if (!v50)
            {
              LODWORD(v37) = 0;
              *(a2 + 24) = 1;
              goto LABEL_63;
            }

            v52 = *v49;
            *(a2 + 1) = v51;
            v37 |= (v52 & 0x7F) << v47;
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
              LODWORD(v37) = 0;
              goto LABEL_63;
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
              goto LABEL_55;
            }
          }
        }

LABEL_63:
        *(this + 5) = v37;
      }

      else if (v22 == 2)
      {
        *(this + 24) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v41 = 0;
          v42 = 0;
          v28 = 0;
          v43 = (v25 + v24);
          v18 = v23 >= v24;
          v44 = v23 - v24;
          if (!v18)
          {
            v44 = 0;
          }

          v45 = v24 + 1;
          while (1)
          {
            if (!v44)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_60;
            }

            v46 = *v43;
            *(a2 + 1) = v45;
            v28 |= (v46 & 0x7F) << v41;
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
              LODWORD(v28) = 0;
              goto LABEL_60;
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
              goto LABEL_47;
            }
          }
        }

LABEL_60:
        *(this + 4) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v53 = 0;
          return v53 & 1;
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

void sirinluinternal::SpanDataForNamedCaptureGroup::~SpanDataForNamedCaptureGroup(sirinluinternal::SpanDataForNamedCaptureGroup *this)
{
  sirinluinternal::SpanDataForNamedCaptureGroup::~SpanDataForNamedCaptureGroup(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  v2 = *(this + 1);
  *this = &unk_1F4878CD8;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluinternal::SpanDataForNamedCaptureGroup::SpanDataForNamedCaptureGroup(uint64_t this)
{
  *this = &unk_1F4878CD8;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4878CD8;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t sirinluinternal::SpanDataForNamedCaptureGroup::SpanDataForNamedCaptureGroup(uint64_t this, const sirinluinternal::SpanDataForNamedCaptureGroup *a2)
{
  *this = &unk_1F4878CD8;
  *(this + 8) = 0;
  *(this + 24) = 0;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 4);
    *(this + 24) |= 1u;
    *(this + 16) = v3;
    v2 = *(a2 + 24);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a2 + 5);
    *(this + 24) |= 2u;
    *(this + 20) = v4;
  }

  return this;
}

uint64_t sirinluinternal::SpanDataForNamedCaptureGroup::operator=(uint64_t a1, const sirinluinternal::SpanDataForNamedCaptureGroup *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::SpanDataForNamedCaptureGroup::SpanDataForNamedCaptureGroup(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sirinluinternal::SpanDataForNamedCaptureGroup::~SpanDataForNamedCaptureGroup(&v7);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::SpanDataForNamedCaptureGroup *a2, sirinluinternal::SpanDataForNamedCaptureGroup *a3)
{
  v3 = *(this + 24);
  *(this + 24) = *(a2 + 6);
  *(a2 + 6) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  LODWORD(v4) = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v4;
  return this;
}

uint64_t sirinluinternal::SpanDataForNamedCaptureGroup::SpanDataForNamedCaptureGroup(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878CD8;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t sirinluinternal::SpanDataForNamedCaptureGroup::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::SpanDataForNamedCaptureGroup::SpanDataForNamedCaptureGroup(&v7, a2);
    v3 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 16);
    *(a1 + 16) = v9;
    v9 = v5;
    sirinluinternal::SpanDataForNamedCaptureGroup::~SpanDataForNamedCaptureGroup(&v7);
  }

  return a1;
}

BOOL sirinluinternal::SpanDataForNamedCaptureGroup::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
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

    v10 = v6 >= 0 ? *(a1 + 8) : *v4;
    v11 = v9 >= 0 ? *(a2 + 8) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if ((*(a2 + 24) & 1) == 0)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

LABEL_25:
  result = (*(a2 + 24) & 2) == 0;
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*(a2 + 24) & 2) != 0 && *(a1 + 20) == *(a2 + 20);
  }

  return result;
}

unint64_t sirinluinternal::SpanDataForNamedCaptureGroup::hash_value(sirinluinternal::SpanDataForNamedCaptureGroup *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v2 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  if (*(this + 24))
  {
    v3 = *(this + 4);
    if ((*(this + 24) & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v3 = 0;
  if ((*(this + 24) & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  v4 = *(this + 5);
  return v3 ^ v2 ^ v4;
}

uint64_t sirinluinternal::NLv4EmbeddingTensor::formatText(sirinluinternal::NLv4EmbeddingTensor *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  v5 = *(this + 64);
  if (v5)
  {
    v10 = *(this + 5);
    PB::TextFormatter::format(a2, "embedding_dim");
    v5 = *(this + 64);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_5;
  }

  v11 = *(this + 6);
  PB::TextFormatter::format(a2, "num_layer");
  if ((*(this + 64) & 4) != 0)
  {
LABEL_6:
    v6 = *(this + 7);
    PB::TextFormatter::format(a2, "num_token");
  }

LABEL_7:
  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    PB::TextFormatter::format(a2, "values", v9);
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::NLv4EmbeddingTensor::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::write(a2, v6);
  }

  v7 = *(v3 + 64);
  if ((v7 & 4) != 0)
  {
    v9 = *(v3 + 56);
    this = PB::Writer::writeVarInt(a2);
    v7 = *(v3 + 64);
    if ((v7 & 2) == 0)
    {
LABEL_6:
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v3 + 64) & 2) == 0)
  {
    goto LABEL_6;
  }

  v10 = *(v3 + 48);
  this = PB::Writer::writeVarInt(a2);
  if (*(v3 + 64))
  {
LABEL_7:
    v8 = *(v3 + 40);
    this = PB::Writer::writeVarInt(a2);
  }

LABEL_8:
  if (*(v3 + 32))
  {

    return PB::Writer::write();
  }

  return this;
}

double sirinluinternal::NLv4EmbeddingTensor::NLv4EmbeddingTensor(sirinluinternal::NLv4EmbeddingTensor *this)
{
  *this = &unk_1F4878D28;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4878D28;
  *(this + 16) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

sirinluinternal::NLv4EmbeddingTensor *sirinluinternal::NLv4EmbeddingTensor::NLv4EmbeddingTensor(char **this, char **a2)
{
  *this = &unk_1F4878D28;
  *(this + 1) = 0u;
  v4 = this + 1;
  *(this + 16) = 0;
  *(this + 3) = 0u;
  if (this != a2)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4, a2[1], a2[2], (a2[2] - a2[1]) >> 2);
  }

  v5 = *(a2 + 64);
  if ((v5 & 4) != 0)
  {
    v7 = a2[7];
    *(this + 64) |= 4u;
    this[7] = v7;
    v5 = *(a2 + 64);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((a2[8] & 2) == 0)
  {
    goto LABEL_5;
  }

  v8 = a2[6];
  *(this + 64) |= 2u;
  this[6] = v8;
  if (a2[8])
  {
LABEL_6:
    v6 = a2[5];
    *(this + 64) |= 1u;
    this[5] = v6;
  }

LABEL_7:
  if (a2[4])
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::NLv4EmbeddingTensor::operator=(uint64_t a1, char **a2)
{
  if (a1 != a2)
  {
    sirinluinternal::NLv4EmbeddingTensor::NLv4EmbeddingTensor(&v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v11;
    v5 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v5;
    v6 = v12;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v6;
    v11 = v4;
    v12 = v8;
    sirinluinternal::NLv4EmbeddingTensor::~NLv4EmbeddingTensor(&v10);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::NLv4EmbeddingTensor *a2, sirinluinternal::NLv4EmbeddingTensor *a3)
{
  v3 = *(this + 64);
  *(this + 64) = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v7;
  v8 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v8;
  v10 = *(this + 32);
  v9 = *(this + 40);
  v11 = *(a2 + 5);
  *(this + 32) = *(a2 + 4);
  *(this + 40) = v11;
  *(a2 + 4) = v10;
  *(a2 + 5) = v9;
  return this;
}

uint64_t sirinluinternal::NLv4EmbeddingTensor::NLv4EmbeddingTensor(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F4878D28;
  *(a1 + 24) = 0u;
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 64) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    *(a1 + 16) = v5;
    operator delete(v5);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v7 = *(a2 + 56);
  *(a2 + 24) = 0;
  *(a1 + 56) = v7;
  *(a1 + 48) = *(a2 + 48);
  v8 = *(a2 + 40);
  *(a2 + 32) = 0;
  v9 = *(a1 + 32);
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  if (v9)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v9);
  }

  return a1;
}

uint64_t sirinluinternal::NLv4EmbeddingTensor::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::NLv4EmbeddingTensor::NLv4EmbeddingTensor(v10, a2);
    v3 = *(a1 + 64);
    *(a1 + 64) = v15;
    v15 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v11;
    v5 = *(a1 + 56);
    *(a1 + 56) = v14;
    v14 = v5;
    v6 = v12;
    v7 = *(a1 + 40);
    *(a1 + 40) = v13;
    v13 = v7;
    v8 = *(a1 + 24);
    *(a1 + 24) = v6;
    v11 = v4;
    v12 = v8;
    sirinluinternal::NLv4EmbeddingTensor::~NLv4EmbeddingTensor(v10);
  }

  return a1;
}

BOOL sirinluinternal::NLv4EmbeddingTensor::operator==(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a2 + 8);
  if (v2 - v3 != *(a2 + 16) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v5 = *(a2 + 64);
  if ((*(a1 + 64) & 4) != 0)
  {
    if ((*(a2 + 64) & 4) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 2) != 0)
  {
    if ((*(a2 + 64) & 2) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if ((*(a2 + 64) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    if ((*(a2 + 64) & 1) == 0)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if ((*(a2 + 64) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

LABEL_20:
  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  result = (v6 | v7) == 0;
  if (v6)
  {
    if (v7)
    {
      return std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v6, v7);
    }
  }

  return result;
}

unint64_t sirinluinternal::NLv4EmbeddingTensor::hash_value(sirinluinternal::NLv4EmbeddingTensor *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = PBHashBytes();
  if ((*(this + 64) & 4) == 0)
  {
    v5 = 0;
    if ((*(this + 64) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if (*(this + 64))
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v5 = *(this + 7);
  if ((*(this + 64) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = *(this + 6);
  if (*(this + 64))
  {
LABEL_4:
    v7 = *(this + 5);
    goto LABEL_8;
  }

LABEL_7:
  v7 = 0;
LABEL_8:
  v8 = *(this + 4);
  if (v8)
  {
    v8 = std::__string_hash<char>::operator()[abi:ne200100](v8);
  }

  return v5 ^ v4 ^ v6 ^ v7 ^ v8;
}

uint64_t SIRINLUEXTERNALUserWantedToPauseReadFrom(uint64_t a1, void *a2)
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

uint64_t sirinluexternal::MatchInfo::formatText(sirinluexternal::MatchInfo *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "edit_distance");
  }

  v6 = *(this + 5);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "match_score");
  }

  if (*(this + 100))
  {
    v7 = *(this + 24);
    PB::TextFormatter::format(a2, "match_signal_bitset");
  }

  v8 = *(this + 6);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "matched_alias_count");
  }

  v9 = *(this + 1);
  v10 = *(this + 2);
  while (v9 != v10)
  {
    v11 = *v9++;
    PB::TextFormatter::format(a2, "matched_alias_types");
  }

  v12 = *(this + 7);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "matched_stop_word_count");
  }

  v13 = *(this + 8);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "matched_token_count");
  }

  v14 = *(this + 9);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "max_alias_count");
  }

  v15 = *(this + 10);
  if (v15)
  {
    (*(*v15 + 32))(v15, a2, "max_stop_word_count");
  }

  v16 = *(this + 11);
  if (v16)
  {
    (*(*v16 + 32))(v16, a2, "max_token_count");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::MatchInfo::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 100))
  {
    v4 = *(this + 96);
    this = PB::Writer::writeFixed(a2);
  }

  v5 = v3[5];
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = v3[11];
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = v3[8];
  if (v7)
  {
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[10];
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = v3[7];
  if (v9)
  {
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = v3[4];
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[9];
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = v3[6];
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v14 = v3[1];
  v13 = v3[2];
  while (v14 != v13)
  {
    v15 = *v14++;
    this = PB::Writer::writeVarInt(a2);
  }

  return this;
}

uint64_t sirinluexternal::MatchInfo::readFrom(sirinluexternal::MatchInfo *this, PB::Reader *a2)
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
        v14 = 0;
        v15 = 0;
        v10 = 0;
        v16 = (v7 + v2);
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
          v10 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            goto LABEL_19;
          }

          v14 += 7;
          ++v16;
          --v18;
          ++v19;
          v40 = v15++ > 8;
          if (v40)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_121;
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
        v40 = v9++ > 8;
        if (v40)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_121;
      }

      v21 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        break;
      }

      if (v21 <= 7)
      {
        if (v21 == 6)
        {
          operator new();
        }

        if (v21 == 7)
        {
          operator new();
        }

LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_123;
        }

        goto LABEL_84;
      }

      if (v21 == 8)
      {
        operator new();
      }

      if (v21 == 9)
      {
        operator new();
      }

      if (v21 != 10)
      {
        goto LABEL_17;
      }

      if ((v10 & 7) == 2)
      {
        if (PB::Reader::placeMark())
        {
LABEL_123:
          v76 = 0;
          return v76 & 1;
        }

        if (*(a2 + 1) < *(a2 + 2) && (*(a2 + 24) & 1) == 0)
        {
          v22 = *(this + 2);
          while (1)
          {
            v23 = *(this + 3);
            if (v22 >= v23)
            {
              v24 = *(this + 1);
              v25 = v22 - v24;
              v26 = (v22 - v24) >> 2;
              v27 = v26 + 1;
              if ((v26 + 1) >> 62)
              {
                goto LABEL_125;
              }

              v28 = v23 - v24;
              if (v28 >> 1 > v27)
              {
                v27 = v28 >> 1;
              }

              if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v29 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v27;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v29);
              }

              v30 = (v22 - v24) >> 2;
              v31 = (4 * v26);
              v32 = (4 * v26 - 4 * v30);
              *v31 = 0;
              v22 = (v31 + 1);
              memcpy(v32, v24, v25);
              v33 = *(this + 1);
              *(this + 1) = v32;
              *(this + 2) = v22;
              *(this + 3) = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v22 = 0;
              v22 += 4;
            }

            *(this + 2) = v22;
            v35 = *(a2 + 1);
            v34 = *(a2 + 2);
            v36 = *a2;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = v35 > 0xFFFFFFFFFFFFFFF5 || v35 + 10 > v34;
            if (v40)
            {
              break;
            }

            v44 = (v36 + v35);
            v45 = v35 + 1;
            while (1)
            {
              v42 = v45;
              *(a2 + 1) = v45;
              v46 = *v44++;
              v39 |= (v46 & 0x7F) << v37;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              ++v45;
              v40 = v38++ > 8;
              if (v40)
              {
                goto LABEL_63;
              }
            }

LABEL_66:
            *(v22 - 1) = v39;
            if (v42 >= v34 || (*(a2 + 24) & 1) != 0)
            {
              goto LABEL_83;
            }
          }

          if (v34 <= v35)
          {
            v41 = *(a2 + 1);
          }

          else
          {
            v41 = *(a2 + 2);
          }

          while (v41 != v35)
          {
            v42 = v35 + 1;
            v43 = *(v36 + v35);
            *(a2 + 1) = v42;
            v39 |= (v43 & 0x7F) << v37;
            if ((v43 & 0x80) == 0)
            {
              if (*(a2 + 24))
              {
                LODWORD(v39) = 0;
              }

              goto LABEL_66;
            }

            v37 += 7;
            v35 = v42;
            v40 = v38++ > 8;
            if (v40)
            {
LABEL_63:
              LODWORD(v39) = 0;
              goto LABEL_66;
            }
          }

          *(a2 + 24) = 1;
          *(v22 - 1) = 0;
        }

LABEL_83:
        PB::Reader::recallMark();
      }

      else
      {
        v49 = *(this + 2);
        v48 = *(this + 3);
        if (v49 >= v48)
        {
          v51 = *(this + 1);
          v52 = v49 - v51;
          v53 = (v49 - v51) >> 2;
          v54 = v53 + 1;
          if ((v53 + 1) >> 62)
          {
LABEL_125:
            std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
          }

          v55 = v48 - v51;
          if (v55 >> 1 > v54)
          {
            v54 = v55 >> 1;
          }

          if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v56 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v56 = v54;
          }

          if (v56)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v56);
          }

          v57 = (v49 - v51) >> 2;
          v58 = (4 * v53);
          v59 = (4 * v53 - 4 * v57);
          *v58 = 0;
          v50 = v58 + 1;
          memcpy(v59, v51, v52);
          v60 = *(this + 1);
          *(this + 1) = v59;
          *(this + 2) = v50;
          *(this + 3) = 0;
          if (v60)
          {
            operator delete(v60);
          }
        }

        else
        {
          *v49 = 0;
          v50 = v49 + 4;
        }

        *(this + 2) = v50;
        v62 = *(a2 + 1);
        v61 = *(a2 + 2);
        v63 = *a2;
        if (v62 > 0xFFFFFFFFFFFFFFF5 || v62 + 10 > v61)
        {
          v70 = 0;
          v71 = 0;
          v66 = 0;
          v72 = (v63 + v62);
          v17 = v61 >= v62;
          v73 = v61 - v62;
          if (!v17)
          {
            v73 = 0;
          }

          v74 = v62 + 1;
          while (1)
          {
            if (!v73)
            {
              LODWORD(v66) = 0;
              *(a2 + 24) = 1;
              goto LABEL_119;
            }

            v75 = *v72;
            *(a2 + 1) = v74;
            v66 |= (v75 & 0x7F) << v70;
            if ((v75 & 0x80) == 0)
            {
              break;
            }

            v70 += 7;
            ++v72;
            --v73;
            ++v74;
            v40 = v71++ > 8;
            if (v40)
            {
LABEL_115:
              LODWORD(v66) = 0;
              goto LABEL_119;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v66) = 0;
          }
        }

        else
        {
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v67 = (v63 + v62);
          v68 = v62 + 1;
          while (1)
          {
            *(a2 + 1) = v68;
            v69 = *v67++;
            v66 |= (v69 & 0x7F) << v64;
            if ((v69 & 0x80) == 0)
            {
              break;
            }

            v64 += 7;
            ++v68;
            v40 = v65++ > 8;
            if (v40)
            {
              goto LABEL_115;
            }
          }
        }

LABEL_119:
        *(v50 - 1) = v66;
      }

LABEL_84:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_121;
      }
    }

    if (v21 <= 2)
    {
      if (v21 == 1)
      {
        *(this + 100) |= 1u;
        v47 = *(a2 + 1);
        if (v47 <= 0xFFFFFFFFFFFFFFFBLL && v47 + 4 <= *(a2 + 2))
        {
          *(this + 24) = *(*a2 + v47);
          *(a2 + 1) += 4;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_84;
      }

      if (v21 == 2)
      {
        operator new();
      }
    }

    else
    {
      switch(v21)
      {
        case 3:
          operator new();
        case 4:
          operator new();
        case 5:
          operator new();
      }
    }

    goto LABEL_17;
  }

LABEL_121:
  v76 = v4 ^ 1;
  return v76 & 1;
}

void sirinluexternal::MatchInfo::~MatchInfo(sirinluexternal::MatchInfo *this)
{
  sirinluexternal::MatchInfo::~MatchInfo(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878D78;
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  *(this + 9) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 7);
  *(this + 7) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  *(this + 6) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 5);
  *(this + 5) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 1);
  if (v10)
  {
    *(this + 2) = v10;
    operator delete(v10);
  }

  PB::Base::~Base(this);
}

double sirinluexternal::MatchInfo::MatchInfo(sirinluexternal::MatchInfo *this)
{
  *this = &unk_1F4878D78;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

{
  *this = &unk_1F4878D78;
  *(this + 25) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  return result;
}

sirinluexternal::MatchInfo *sirinluexternal::MatchInfo::MatchInfo(sirinluexternal::MatchInfo *this, const sirinluexternal::MatchInfo *a2)
{
  *this = &unk_1F4878D78;
  *(this + 8) = 0u;
  v3 = (this + 8);
  *(this + 25) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  if (*(a2 + 100))
  {
    v4 = *(a2 + 24);
    *(this + 100) = 1;
    *(this + 24) = v4;
  }

  if (*(a2 + 5))
  {
    operator new();
  }

  if (*(a2 + 11))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  if (this != a2)
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);
    v7 = v6 - v5;
    v8 = *(this + 3);
    v9 = *(this + 1);
    if (v8 - v9 < (v6 - v5))
    {
      v10 = v7 >> 2;
      if (v9)
      {
        *(this + 2) = v9;
        operator delete(v9);
        v8 = 0;
        *v3 = 0;
        v3[1] = 0;
        v3[2] = 0;
      }

      if (!(v10 >> 62))
      {
        v11 = v8 >> 1;
        if (v8 >> 1 <= v10)
        {
          v11 = v7 >> 2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v12 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 62))
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v12);
        }
      }

      std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
    }

    v13 = *(this + 2);
    v14 = v13 - v9;
    if (v13 - v9 >= v7)
    {
      if (v6 != v5)
      {
        memmove(v9, v5, v6 - v5);
      }

      v16 = &v9[v7];
    }

    else
    {
      v15 = &v5[v14];
      if (v13 != v9)
      {
        memmove(*(this + 1), v5, v14);
        v13 = *(this + 2);
      }

      if (v6 != v15)
      {
        memmove(v13, v15, v6 - v15);
      }

      v16 = &v13[v6 - v15];
    }

    *(this + 2) = v16;
  }

  return this;
}

uint64_t sirinluexternal::MatchInfo::operator=(uint64_t a1, const sirinluexternal::MatchInfo *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::MatchInfo::MatchInfo(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::MatchInfo::~MatchInfo(v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::MatchInfo *a2, sirinluexternal::MatchInfo *a3)
{
  v3 = *(this + 100);
  *(this + 100) = *(a2 + 25);
  *(a2 + 25) = v3;
  v4 = *(this + 96);
  *(this + 96) = *(a2 + 24);
  *(a2 + 24) = v4;
  v5 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = *(this + 88);
  *(this + 88) = *(a2 + 11);
  *(a2 + 11) = v6;
  v7 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *(this + 80);
  *(this + 80) = *(a2 + 10);
  *(a2 + 10) = v8;
  v9 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v9;
  v10 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v10;
  v11 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v11;
  v12 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v12;
  v13 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v13;
  v14 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v14;
  v15 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v15;
  return this;
}

uint64_t sirinluexternal::MatchInfo::MatchInfo(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878D78;
  *(a1 + 8) = 0u;
  v4 = a1 + 8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 100) = *(a2 + 100);
  *(a2 + 100) = 0;
  *(a1 + 96) = *(a2 + 96);
  v5 = *(a2 + 40);
  *(a2 + 40) = 0;
  v6 = *(a1 + 40);
  *(a1 + 40) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 88);
  *(a2 + 88) = 0;
  v8 = *(a1 + 88);
  *(a1 + 88) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 64);
  *(a2 + 64) = 0;
  v10 = *(a1 + 64);
  *(a1 + 64) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a2 + 80);
  *(a2 + 80) = 0;
  v12 = *(a1 + 80);
  *(a1 + 80) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 56);
  *(a2 + 56) = 0;
  v14 = *(a1 + 56);
  *(a1 + 56) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a2 + 32);
  *(a2 + 32) = 0;
  v16 = *(a1 + 32);
  *(a1 + 32) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(a2 + 72);
  *(a2 + 72) = 0;
  v18 = *(a1 + 72);
  *(a1 + 72) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(a2 + 48);
  *(a2 + 48) = 0;
  v20 = *(a1 + 48);
  *(a1 + 48) = v19;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *v4;
  if (*v4)
  {
    *(a1 + 16) = v21;
    operator delete(v21);
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluexternal::MatchInfo::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::MatchInfo::MatchInfo(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::MatchInfo::~MatchInfo(v5);
  }

  return a1;
}

BOOL sirinluexternal::MatchInfo::operator==(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 100);
  if (*(a1 + 100))
  {
    if ((*(a2 + 100) & 1) == 0 || *(a1 + 96) != *(a2 + 96))
    {
      return 0;
    }
  }

  else if (*(a2 + 100))
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a2 + 40);
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(v4 + 12);
    if (*(v3 + 12))
    {
      if ((*(v4 + 12) & 1) == 0 || *(v3 + 8) != *(v4 + 8))
      {
        return 0;
      }
    }

    else if (*(v4 + 12))
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v6 = *(a1 + 88);
  v7 = *(a2 + 88);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(v7 + 12);
    if (*(v6 + 12))
    {
      if ((*(v7 + 12) & 1) == 0 || *(v6 + 8) != *(v7 + 8))
      {
        return 0;
      }
    }

    else if (*(v7 + 12))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = *(a1 + 64);
  v10 = *(a2 + 64);
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *(v10 + 12);
    if (*(v9 + 12))
    {
      if ((*(v10 + 12) & 1) == 0 || *(v9 + 8) != *(v10 + 8))
      {
        return 0;
      }
    }

    else if (*(v10 + 12))
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(a1 + 80);
  v13 = *(a2 + 80);
  if (v12)
  {
    if (!v13)
    {
      return 0;
    }

    v14 = *(v13 + 12);
    if (*(v12 + 12))
    {
      if ((*(v13 + 12) & 1) == 0 || *(v12 + 8) != *(v13 + 8))
      {
        return 0;
      }
    }

    else if (*(v13 + 12))
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *(v16 + 12);
    if (*(v15 + 12))
    {
      if ((*(v16 + 12) & 1) == 0 || *(v15 + 8) != *(v16 + 8))
      {
        return 0;
      }
    }

    else if (*(v16 + 12))
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v18 = *(a1 + 32);
  v19 = *(a2 + 32);
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *(v19 + 12);
    if (*(v18 + 12))
    {
      if ((*(v19 + 12) & 1) == 0 || *(v18 + 8) != *(v19 + 8))
      {
        return 0;
      }
    }

    else if (*(v19 + 12))
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v21 = *(a1 + 72);
  v22 = *(a2 + 72);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *(v22 + 12);
    if (*(v21 + 12))
    {
      if ((*(v22 + 12) & 1) == 0 || *(v21 + 8) != *(v22 + 8))
      {
        return 0;
      }
    }

    else if (*(v22 + 12))
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v24 = *(a1 + 48);
  v25 = *(a2 + 48);
  if (!v24)
  {
    if (!v25)
    {
      goto LABEL_78;
    }

    return 0;
  }

  if (!v25)
  {
    return 0;
  }

  v26 = *(v25 + 12);
  if (*(v24 + 12))
  {
    if ((*(v25 + 12) & 1) == 0 || *(v24 + 8) != *(v25 + 8))
    {
      return 0;
    }
  }

  else if (*(v25 + 12))
  {
    return 0;
  }

LABEL_78:
  v28 = *(a1 + 8);
  v27 = *(a1 + 16);
  v29 = *(a2 + 8);
  if (v27 - v28 != *(a2 + 16) - v29)
  {
    return 0;
  }

  if (v28 == v27)
  {
    return 1;
  }

  v30 = v28 + 4;
  do
  {
    v31 = *v29++;
    result = *(v30 - 4) == v31;
    v33 = *(v30 - 4) != v31 || v30 == v27;
    v30 += 4;
  }

  while (!v33);
  return result;
}

uint64_t sirinluexternal::MatchInfo::hash_value(sirinluexternal::MatchInfo *this)
{
  if (*(this + 100))
  {
    v1 = *(this + 24);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(this + 5);
  if (v2)
  {
    if (*(v2 + 12))
    {
      v3 = *(v2 + 8);
      v2 = LODWORD(v3);
      if (v3 == 0.0)
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = *(this + 11);
  if (v4)
  {
    if (*(v4 + 12))
    {
      v4 = *(v4 + 8);
    }

    else
    {
      v4 = 0;
    }
  }

  v5 = *(this + 8);
  if (v5)
  {
    if (*(v5 + 12))
    {
      v5 = *(v5 + 8);
    }

    else
    {
      v5 = 0;
    }
  }

  v6 = *(this + 10);
  if (v6)
  {
    if (*(v6 + 12))
    {
      v6 = *(v6 + 8);
    }

    else
    {
      v6 = 0;
    }
  }

  v7 = *(this + 7);
  if (v7)
  {
    if (*(v7 + 12))
    {
      v7 = *(v7 + 8);
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = *(this + 4);
  if (v8)
  {
    if (*(v8 + 12))
    {
      v8 = *(v8 + 8);
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = *(this + 9);
  if (v9)
  {
    if (*(v9 + 12))
    {
      v9 = *(v9 + 8);
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = *(this + 6);
  if (v10)
  {
    if (*(v10 + 12))
    {
      v10 = *(v10 + 8);
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = *(this + 2) - *(this + 1);
  return v2 ^ v1 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ PBHashBytes();
}

uint64_t sirinluexternal::MatchInfo::makeMatchScore(uint64_t this)
{
  if (!*(this + 40))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::MatchInfo::makeMaxTokenCount(uint64_t this)
{
  if (!*(this + 88))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::MatchInfo::makeMatchedTokenCount(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::MatchInfo::makeMaxStopWordCount(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::MatchInfo::makeMatchedStopWordCount(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::MatchInfo::makeEditDistance(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::MatchInfo::makeMaxAliasCount(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::MatchInfo::makeMatchedAliasCount(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMParserResponse::formatText(sirinluinternalitfm::ITFMParserResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 48);
  if ((v5 & 2) != 0)
  {
    v6 = *(this + 44);
    PB::TextFormatter::format(a2, "classification_label");
    v5 = *(this + 48);
  }

  if (v5)
  {
    PB::TextFormatter::format(a2, "classification_probability", *(this + 10));
  }

  v7 = *(this + 1);
  v8 = *(this + 2);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "hypotheses");
  }

  v10 = *(this + 4);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "parser");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalitfm::ITFMParserResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 48);
  if ((v4 & 2) != 0)
  {
    v5 = *(this + 44);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 48);
  }

  if (v4)
  {
    this = PB::Writer::write(a2, *(v3 + 40));
  }

  v6 = *(v3 + 32);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v8 = *(v3 + 8);
  v7 = *(v3 + 16);
  while (v8 != v7)
  {
    v9 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMParserResponse::readFrom(sirinluinternalitfm::ITFMParserResponse *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        operator new();
      }

      if (v22 == 4)
      {
        operator new();
      }
    }

    else
    {
      if (v22 == 1)
      {
        *(this + 48) |= 2u;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2))
        {
          v27 = 0;
          *(a2 + 24) = 1;
        }

        else
        {
          v25 = v24 + 1;
          v26 = *(*a2 + v24);
          *(a2 + 1) = v25;
          v27 = v26 != 0;
        }

        *(this + 44) = v27;
        goto LABEL_35;
      }

      if (v22 == 2)
      {
        *(this + 48) |= 1u;
        v23 = *(a2 + 1);
        if (v23 <= 0xFFFFFFFFFFFFFFFBLL && v23 + 4 <= *(a2 + 2))
        {
          *(this + 10) = *(*a2 + v23);
          *(a2 + 1) += 4;
        }

        else
        {
          *(a2 + 24) = 1;
        }

        goto LABEL_35;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v29 = 0;
      return v29 & 1;
    }

LABEL_35:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v29 = v4 ^ 1;
  return v29 & 1;
}

uint64_t sirinluinternalitfm::ITFMParserResponse::operator=(uint64_t a1, const sirinluinternalitfm::ITFMParserResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    LOBYTE(v3) = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = v11;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v10 = v6;
    v11 = v7;
    sirinluinternalitfm::ITFMParserResponse::~ITFMParserResponse(v9);
  }

  return a1;
}

float sirinluinternalitfm::swap(sirinluinternalitfm *this, sirinluinternalitfm::ITFMParserResponse *a2, sirinluinternalitfm::ITFMParserResponse *a3)
{
  v3 = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v3;
  LOBYTE(v3) = *(this + 44);
  *(this + 44) = *(a2 + 44);
  *(a2 + 44) = v3;
  result = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = result;
  v5 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  return result;
}

uint64_t sirinluinternalitfm::ITFMParserResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v14;
    v14 = v3;
    LOBYTE(v3) = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v4;
    v5 = v11;
    v6 = *(a1 + 8);
    *(a1 + 8) = v10;
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;
    v10 = v6;
    v11 = v7;
    sirinluinternalitfm::ITFMParserResponse::~ITFMParserResponse(v9);
  }

  return a1;
}

BOOL sirinluinternalitfm::ITFMParserResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if ((*(a1 + 48) & 2) != 0)
  {
    if ((*(a2 + 48) & 2) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((*(a2 + 48) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (*(a2 + 48))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  if (v5)
  {
    if (!v6 || !sirinluexternal::Parser::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v9 = a1 + 8;
  v7 = *(a1 + 8);
  v8 = *(v9 + 8);
  v11 = a2 + 8;
  v10 = *(a2 + 8);
  if (v8 - v7 != *(v11 + 8) - v10)
  {
    return 0;
  }

  if (v7 == v8)
  {
    return 1;
  }

  do
  {
    v13 = *v7++;
    v12 = v13;
    v14 = *v10++;
    result = sirinluinternalitfm::ITFMHypothesis::operator==(v12, v14);
  }

  while (result && v7 != v8);
  return result;
}

uint64_t sirinluinternalitfm::ITFMParserResponse::hash_value(sirinluinternalitfm::ITFMParserResponse *this)
{
  if ((*(this + 48) & 2) == 0)
  {
    v1 = 0;
    if (*(this + 48))
    {
      goto LABEL_3;
    }

LABEL_7:
    v3 = 0;
    goto LABEL_8;
  }

  v1 = *(this + 44);
  if ((*(this + 48) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v2 = *(this + 10);
  if (v2 == 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = LODWORD(v2);
  }

LABEL_8:
  v4 = *(this + 4);
  if (!v4)
  {
    v7 = 0;
    goto LABEL_16;
  }

  if (*(v4 + 16))
  {
    v5 = *(v4 + 8);
    if ((*(v4 + 16) & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v5 = 0;
  if ((*(v4 + 16) & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v6 = *(v4 + 12);
LABEL_15:
  v7 = v6 ^ v5;
LABEL_16:
  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *v8++;
      v10 ^= sirinluinternalitfm::ITFMHypothesis::hash_value(v11);
    }

    while (v8 != v9);
  }

  return v3 ^ v1 ^ v7 ^ v10;
}

uint64_t sirinluinternalitfm::ITFMParserResponse::makeParser(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALNLU_ROUTERTurnSummaryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v21 = [a2 position] + 1;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
          {
            v23 = [a2 data];
            [v23 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v20 |= (v27[0] & 0x7F) << v18;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v11 = v19++ >= 9;
          if (v11)
          {
            v24 = 0;
            goto LABEL_42;
          }
        }

        if ([a2 hasError])
        {
          v24 = 0;
        }

        else
        {
          v24 = v20;
        }

LABEL_42:
        *(a1 + 16) = v24;
        goto LABEL_43;
      }

      if (v13 != 4)
      {
        goto LABEL_26;
      }

      v16 = objc_alloc_init(SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadata);
      objc_storeStrong((a1 + 24), v16);
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !SIRINLUEXTERNALNLU_ROUTERNLRoutingGenAIMetadataReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 8;
      goto LABEL_29;
    }

    if (v13 == 2)
    {
      v14 = PBReaderReadString();
      v15 = 32;
LABEL_29:
      v17 = *(a1 + v15);
      *(a1 + v15) = v14;

      goto LABEL_43;
    }

LABEL_26:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::UserWantedToRepeat::formatText(sirinluexternal::UserWantedToRepeat *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "reference");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "system_dialog_act_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UserWantedToRepeat::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

uint64_t sirinluexternal::UserWantedToRepeat::readFrom(sirinluexternal::UserWantedToRepeat *this, PB::Reader *a2)
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

void sirinluexternal::UserWantedToRepeat::~UserWantedToRepeat(sirinluexternal::UserWantedToRepeat *this)
{
  sirinluexternal::UserWantedToRepeat::~UserWantedToRepeat(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878E18;
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

void *sirinluexternal::UserWantedToRepeat::UserWantedToRepeat(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878E18;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878E18;
  return this;
}

void *sirinluexternal::UserWantedToRepeat::UserWantedToRepeat(void *this, const sirinluexternal::UserWantedToRepeat *a2)
{
  *this = &unk_1F4878E18;
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

uint64_t sirinluexternal::UserWantedToRepeat::operator=(uint64_t a1, const sirinluexternal::UserWantedToRepeat *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserWantedToRepeat::UserWantedToRepeat(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserWantedToRepeat::~UserWantedToRepeat(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::UserWantedToRepeat *a2, sirinluexternal::UserWantedToRepeat *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::UserWantedToRepeat::UserWantedToRepeat(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4878E18;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
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

  return a1;
}

uint64_t sirinluexternal::UserWantedToRepeat::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UserWantedToRepeat::UserWantedToRepeat(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::UserWantedToRepeat::~UserWantedToRepeat(&v5);
  }

  return a1;
}

BOOL sirinluexternal::UserWantedToRepeat::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5 && sirinluexternal::UUID::operator==(v4, v5))
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
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
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
    v10 = *(a1 + 8);

    return sirinluexternal::UsoGraph::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternal::UserWantedToRepeat::hash_value(sirinluexternal::UserWantedToRepeat *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if ((*(v1 + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(v1 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    if ((*(v1 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = *(v1 + 8);
  if ((*(v1 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(v1 + 16);
  if ((*(v1 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(v1 + 24);
LABEL_10:
  v5 = v3 ^ v2 ^ v4;
LABEL_11:
  v6 = *(this + 1);
  if (v6)
  {
    v6 = sirinluexternal::UsoGraph::hash_value(v6);
  }

  return v6 ^ v5;
}

uint64_t sirinluexternal::UserWantedToRepeat::makeSystemDialogActId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::UserWantedToRepeat::makeReference(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALNLUSupplementaryOutputReadFrom(id *a1, void *a2)
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
        LOBYTE(v17) = 0;
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
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = objc_alloc_init(SIRINLUEXTERNALCorrectionOutcome);
        objc_storeStrong(a1 + 1, v14);
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALCorrectionOutcomeReadFrom(v14, a2))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SIRINLUEXTERNALSpan);
        [a1 addMatchingSpans:v14];
        v17 = 0;
        v18 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALSpanReadFrom(v14, a2))
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SIRINLUEXTERNALRewriteMessage);
    objc_storeStrong(a1 + 3, v14);
    v17 = 0;
    v18 = 0;
    if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRewriteMessageReadFrom(v14, a2))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::Token::formatText(sirinluinternal::Token *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  if (*(this + 92))
  {
    v5 = *(this + 18);
    PB::TextFormatter::format(a2, "begin");
  }

  if (*(this + 1))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 2);
  for (i = *(this + 3); v6 != i; v6 += 24)
  {
    PB::TextFormatter::format();
  }

  v8 = *(this + 92);
  if ((v8 & 2) != 0)
  {
    v13 = *(this + 19);
    PB::TextFormatter::format(a2, "end");
    v8 = *(this + 92);
    if ((v8 & 0x10) == 0)
    {
LABEL_9:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_23;
    }
  }

  else if ((*(this + 92) & 0x10) == 0)
  {
    goto LABEL_9;
  }

  v14 = *(this + 88);
  PB::TextFormatter::format(a2, "is_significant");
  v8 = *(this + 92);
  if ((v8 & 0x20) == 0)
  {
LABEL_10:
    if ((v8 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_23:
  v15 = *(this + 89);
  PB::TextFormatter::format(a2, "is_whitespace");
  if ((*(this + 92) & 4) != 0)
  {
LABEL_11:
    v9 = *(this + 20);
    PB::TextFormatter::format(a2, "non_whitespace_token_index");
  }

LABEL_12:
  v10 = *(this + 5);
  for (j = *(this + 6); v10 != j; v10 += 24)
  {
    PB::TextFormatter::format();
  }

  if ((*(this + 92) & 8) != 0)
  {
    v12 = *(this + 21);
    PB::TextFormatter::format(a2, "token_index");
  }

  if (*(this + 8))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::Token::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 64))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 92);
  if (v4)
  {
    v13 = *(v3 + 72);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 92);
    if ((v4 & 2) == 0)
    {
LABEL_5:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_6;
      }

LABEL_23:
      v15 = *(v3 + 88);
      this = PB::Writer::write(a2);
      if ((*(v3 + 92) & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v3 + 92) & 2) == 0)
  {
    goto LABEL_5;
  }

  v14 = *(v3 + 76);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 92);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_23;
  }

LABEL_6:
  if ((v4 & 0x20) != 0)
  {
LABEL_7:
    v5 = *(v3 + 89);
    this = PB::Writer::write(a2);
  }

LABEL_8:
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  while (v6 != v7)
  {
    this = PB::Writer::write();
    v6 += 24;
  }

  v8 = *(v3 + 92);
  if ((v8 & 8) != 0)
  {
    v9 = *(v3 + 84);
    this = PB::Writer::writeVarInt(a2);
    v8 = *(v3 + 92);
  }

  if ((v8 & 4) != 0)
  {
    v10 = *(v3 + 80);
    this = PB::Writer::writeVarInt(a2);
  }

  if (*(v3 + 8))
  {
    this = PB::Writer::write();
  }

  v12 = *(v3 + 40);
  v11 = *(v3 + 48);
  while (v12 != v11)
  {
    this = PB::Writer::write();
    v12 += 24;
  }

  return this;
}

double sirinluinternal::Token::Token(sirinluinternal::Token *this)
{
  *this = &unk_1F4878E68;
  *(this + 23) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

{
  *this = &unk_1F4878E68;
  *(this + 23) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  return result;
}

uint64_t sirinluinternal::Token::operator=(uint64_t a1, const sirinluinternal::Token *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::Token::Token(v5, a2);
    sirinluinternal::swap(a1, v5, v3);
    sirinluinternal::Token::~Token(v5);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::Token *a2, sirinluinternal::Token *a3)
{
  v3 = *(this + 92);
  *(this + 92) = *(a2 + 23);
  *(a2 + 23) = v3;
  v4 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v4;
  LODWORD(v4) = *(this + 72);
  *(this + 72) = *(a2 + 18);
  *(a2 + 18) = v4;
  LODWORD(v4) = *(this + 76);
  *(this + 76) = *(a2 + 19);
  *(a2 + 19) = v4;
  LOBYTE(v4) = *(this + 88);
  *(this + 88) = *(a2 + 88);
  *(a2 + 88) = v4;
  LOBYTE(v4) = *(this + 89);
  *(this + 89) = *(a2 + 89);
  *(a2 + 89) = v4;
  v5 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v7;
  LODWORD(v7) = *(this + 84);
  *(this + 84) = *(a2 + 21);
  *(a2 + 21) = v7;
  LODWORD(v7) = *(this + 80);
  *(this + 80) = *(a2 + 20);
  *(a2 + 20) = v7;
  v8 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v8;
  v9 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v9;
  v10 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v10;
  v11 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v11;
  return this;
}

uint64_t sirinluinternal::Token::Token(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878E68;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 92) = *(a2 + 92);
  *(a2 + 92) = 0;
  v4 = *(a2 + 64);
  *(a2 + 64) = 0;
  v5 = *(a1 + 64);
  *(a1 + 64) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  std::vector<std::string>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v6 = *(a2 + 84);
  v7 = *(a2 + 8);
  *(a2 + 16) = 0;
  *(a1 + 84) = v6;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 8) = 0;
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  std::vector<std::string>::__vdeallocate((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return a1;
}

uint64_t sirinluinternal::Token::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::Token::Token(v5, a2);
    sirinluinternal::swap(a1, v5, v3);
    sirinluinternal::Token::~Token(v5);
  }

  return a1;
}

BOOL sirinluinternal::Token::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = *(a2 + 64);
  if (v4)
  {
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

    v10 = v6 >= 0 ? *(a1 + 64) : *v4;
    v11 = v9 >= 0 ? *(a2 + 64) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 92);
  v14 = *(a2 + 92);
  if (v13)
  {
    if ((*(a2 + 92) & 1) == 0 || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }
  }

  else if (*(a2 + 92))
  {
    return 0;
  }

  if ((*(a1 + 92) & 2) != 0)
  {
    if ((*(a2 + 92) & 2) == 0 || *(a1 + 76) != *(a2 + 76))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 2) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x10) != 0)
  {
    if ((*(a2 + 92) & 0x10) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x10) != 0)
  {
    return 0;
  }

  if ((*(a1 + 92) & 0x20) != 0)
  {
    if ((*(a2 + 92) & 0x20) == 0 || *(a1 + 89) != *(a2 + 89))
    {
      return 0;
    }
  }

  else if ((*(a2 + 92) & 0x20) != 0)
  {
    return 0;
  }

  if (!std::operator==[abi:ne200100]<std::string,std::allocator<std::string>>(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)))
  {
    return 0;
  }

  if ((v13 & 8) != 0)
  {
    if ((v14 & 8) == 0 || *(a1 + 84) != *(a2 + 84))
    {
      return 0;
    }
  }

  else if ((v14 & 8) != 0)
  {
    return 0;
  }

  if ((v13 & 4) != 0)
  {
    if ((v14 & 4) == 0 || *(a1 + 80) != *(a2 + 80))
    {
      return 0;
    }
  }

  else if ((v14 & 4) != 0)
  {
    return 0;
  }

  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_55;
    }

    return 0;
  }

  if (!v16 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v15, v16))
  {
    return 0;
  }

LABEL_55:
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a2 + 40);
  v20 = *(a2 + 48);

  return std::operator==[abi:ne200100]<std::string,std::allocator<std::string>>(v17, v18, v19, v20);
}

unint64_t sirinluinternal::Token::hash_value(sirinluinternal::Token *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 92);
  if (v4)
  {
    v19 = *(this + 18);
    if ((*(this + 92) & 2) != 0)
    {
LABEL_6:
      v18 = *(this + 19);
      if ((*(this + 92) & 0x10) != 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      v5 = 0;
      if ((*(this + 92) & 0x20) != 0)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v19 = 0;
    if ((*(this + 92) & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v18 = 0;
  if ((*(this + 92) & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v5 = *(this + 88);
  if ((*(this + 92) & 0x20) != 0)
  {
LABEL_8:
    v6 = *(this + 89);
    goto LABEL_13;
  }

LABEL_12:
  v6 = 0;
LABEL_13:
  v8 = *(this + 2);
  v7 = *(this + 3);
  if (v8 == v7)
  {
    v9 = 0;
    if ((*(this + 92) & 8) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v10 = *(this + 21);
    if ((v4 & 4) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v9 = 0;
  do
  {
    v9 ^= std::__string_hash<char>::operator()[abi:ne200100](v8);
    v8 += 24;
  }

  while (v8 != v7);
  if ((v4 & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v10 = 0;
  if ((v4 & 4) != 0)
  {
LABEL_18:
    v11 = *(this + 20);
    goto LABEL_22;
  }

LABEL_21:
  v11 = 0;
LABEL_22:
  v12 = *(this + 1);
  if (v12)
  {
    v13 = std::__string_hash<char>::operator()[abi:ne200100](v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(this + 5);
  v15 = *(this + 6);
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    do
    {
      v16 ^= std::__string_hash<char>::operator()[abi:ne200100](v14);
      v14 += 24;
    }

    while (v14 != v15);
  }

  return v19 ^ v3 ^ v18 ^ v5 ^ v6 ^ v9 ^ v10 ^ v11 ^ v13 ^ v16;
}

uint64_t sirinluinternalcontextupdate::ReformedTurnInputBundle::formatText(sirinluinternalcontextupdate::ReformedTurnInputBundle *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "current_turn");
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "previous_turns");
  }

  if (*(this + 44))
  {
    v9 = *(this + 10);
    PB::TextFormatter::format(a2, "type");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalcontextupdate::ReformedTurnInputBundle::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 44))
  {
    v4 = *(this + 40);
    this = PB::Writer::writeVarInt(a2);
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

uint64_t sirinluinternalcontextupdate::ReformedTurnInputBundle::readFrom(sirinluinternalcontextupdate::ReformedTurnInputBundle *this, PB::Reader *a2)
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

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_48;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        PB::PtrVector<sirinluexternal::TurnInput>::emplace_back<>();
      }

      if (v22 == 2)
      {
        operator new();
      }

      if (v22 == 1)
      {
        *(this + 44) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v34 = (v25 + v24);
          v18 = v23 >= v24;
          v35 = v23 - v24;
          if (!v18)
          {
            v35 = 0;
          }

          v36 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_43;
            }

            v37 = *v34;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_39:
              LODWORD(v28) = 0;
              goto LABEL_43;
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
              goto LABEL_39;
            }
          }
        }

LABEL_43:
        *(this + 10) = v28;
      }

      else
      {
LABEL_17:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_48;
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
  }

LABEL_48:
  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluinternalcontextupdate::ReformedTurnInputBundle::~ReformedTurnInputBundle(sirinluinternalcontextupdate::ReformedTurnInputBundle *this)
{
  sirinluinternalcontextupdate::ReformedTurnInputBundle::~ReformedTurnInputBundle(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878EB8;
  v3 = (this + 16);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

double sirinluinternalcontextupdate::ReformedTurnInputBundle::ReformedTurnInputBundle(sirinluinternalcontextupdate::ReformedTurnInputBundle *this)
{
  *this = &unk_1F4878EB8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_1F4878EB8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

uint64_t sirinluinternalcontextupdate::ReformedTurnInputBundle::ReformedTurnInputBundle(uint64_t this, const sirinluinternalcontextupdate::ReformedTurnInputBundle *a2)
{
  *this = &unk_1F4878EB8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  if (*(a2 + 44))
  {
    v2 = *(a2 + 10);
    *(this + 44) = 1;
    *(this + 40) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v3 = *(a2 + 2);
  if (v3 != *(a2 + 3))
  {
    v4 = *v3;
    PB::PtrVector<sirinluexternal::TurnInput>::emplace_back<sirinluexternal::TurnInput const&>();
  }

  return this;
}

uint64_t sirinluinternalcontextupdate::ReformedTurnInputBundle::operator=(uint64_t a1, const sirinluinternalcontextupdate::ReformedTurnInputBundle *a2)
{
  if (a1 != a2)
  {
    sirinluinternalcontextupdate::ReformedTurnInputBundle::ReformedTurnInputBundle(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    sirinluinternalcontextupdate::ReformedTurnInputBundle::~ReformedTurnInputBundle(&v7);
  }

  return a1;
}

uint64_t sirinluinternalcontextupdate::swap(uint64_t this, sirinluinternalcontextupdate::ReformedTurnInputBundle *a2, sirinluinternalcontextupdate::ReformedTurnInputBundle *a3)
{
  v3 = *(this + 44);
  *(this + 44) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 40);
  *(this + 40) = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v6;
  v7 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v7;
  v8 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v8;
  return this;
}

uint64_t sirinluinternalcontextupdate::ReformedTurnInputBundle::ReformedTurnInputBundle(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878EB8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sirinluinternalcontextupdate::ReformedTurnInputBundle::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalcontextupdate::ReformedTurnInputBundle::ReformedTurnInputBundle(&v7, a2);
    v3 = *(a1 + 40);
    *(a1 + 40) = v10;
    v10 = v3;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v8 = v4;
    v5 = *(a1 + 24);
    *(a1 + 24) = v9;
    v9 = v5;
    sirinluinternalcontextupdate::ReformedTurnInputBundle::~ReformedTurnInputBundle(&v7);
  }

  return a1;
}

BOOL sirinluinternalcontextupdate::ReformedTurnInputBundle::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if (!v6 || !sirinluexternal::TurnInput::operator==(v5, v6))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 24);

  return PB::PtrVector<sirinluexternal::TurnInput>::operator==((a1 + 16), v7, v8);
}

unint64_t sirinluinternalcontextupdate::ReformedTurnInputBundle::hash_value(sirinluinternalcontextupdate::ReformedTurnInputBundle *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 10);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    v4 = sirinluexternal::TurnInput::hash_value(v3);
  }

  else
  {
    v4 = 0;
  }

  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v6 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *v6++;
      v7 ^= sirinluexternal::TurnInput::hash_value(v8);
    }

    while (v6 != v5);
  }

  return v4 ^ v2 ^ v7;
}

uint64_t sirinluinternalcontextupdate::ReformedTurnInputBundle::makeCurrentTurn(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::AsrTokenInformation::formatText(sirinluexternal::AsrTokenInformation *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 60);
  if ((v5 & 0x20) != 0)
  {
    v9 = *(this + 56);
    PB::TextFormatter::format(a2, "add_space_after");
    v5 = *(this + 60);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*(this + 60) & 2) == 0)
  {
    goto LABEL_3;
  }

  v10 = *(this + 10);
  PB::TextFormatter::format(a2, "begin_index");
  v5 = *(this + 60);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  PB::TextFormatter::format(a2, "confidence_score", *(this + 1));
  v5 = *(this + 60);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_23:
  v11 = *(this + 11);
  PB::TextFormatter::format(a2, "end_index");
  if ((*(this + 60) & 8) != 0)
  {
LABEL_6:
    v6 = *(this + 12);
    PB::TextFormatter::format(a2, "end_milli_seconds");
  }

LABEL_7:
  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  if (*(this + 4))
  {
    PB::TextFormatter::format();
  }

  v7 = *(this + 60);
  if ((v7 & 0x40) != 0)
  {
    v12 = *(this + 57);
    PB::TextFormatter::format(a2, "remove_space_after");
    v7 = *(this + 60);
    if ((v7 & 0x80) == 0)
    {
LABEL_15:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*(this + 60) & 0x80) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(this + 58);
  PB::TextFormatter::format(a2, "remove_space_before");
  if ((*(this + 60) & 0x10) != 0)
  {
LABEL_16:
    v8 = *(this + 13);
    PB::TextFormatter::format(a2, "start_milli_seconds");
  }

LABEL_17:

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::AsrTokenInformation::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 32))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 60);
  if ((v4 & 0x20) != 0)
  {
    v5 = *(v3 + 56);
    this = PB::Writer::write(a2);
    v4 = *(v3 + 60);
    if ((v4 & 0x40) == 0)
    {
LABEL_9:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*(v3 + 60) & 0x40) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v3 + 57);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 60);
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    if ((v4 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = *(v3 + 58);
  this = PB::Writer::write(a2);
  v4 = *(v3 + 60);
  if ((v4 & 1) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  this = PB::Writer::write(a2, *(v3 + 8));
  v4 = *(v3 + 60);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = *(v3 + 40);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 60);
  if ((v4 & 4) == 0)
  {
LABEL_13:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_14;
    }

LABEL_22:
    v10 = *(v3 + 52);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 60) & 8) == 0)
    {
      return this;
    }

    goto LABEL_23;
  }

LABEL_21:
  v9 = *(v3 + 44);
  this = PB::Writer::writeVarInt(a2);
  v4 = *(v3 + 60);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  if ((v4 & 8) == 0)
  {
    return this;
  }

LABEL_23:
  v11 = *(v3 + 48);

  return PB::Writer::writeVarInt(a2);
}

uint64_t sirinluexternal::AsrTokenInformation::readFrom(sirinluexternal::AsrTokenInformation *this, PB::Reader *a2)
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
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 5)
    {
      if (v22 <= 2)
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
            operator new();
          case 4:
            *(this + 60) |= 0x20u;
            v45 = *(a2 + 1);
            if (v45 >= *(a2 + 2))
            {
              v48 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v46 = v45 + 1;
              v47 = *(*a2 + v45);
              *(a2 + 1) = v46;
              v48 = v47 != 0;
            }

            *(this + 56) = v48;
            goto LABEL_18;
          case 5:
            *(this + 60) |= 0x40u;
            v32 = *(a2 + 1);
            if (v32 >= *(a2 + 2))
            {
              v35 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v33 = v32 + 1;
              v34 = *(*a2 + v32);
              *(a2 + 1) = v33;
              v35 = v34 != 0;
            }

            *(this + 57) = v35;
            goto LABEL_18;
        }
      }
    }

    else if (v22 > 8)
    {
      switch(v22)
      {
        case 9:
          *(this + 60) |= 4u;
          v64 = *(a2 + 1);
          v63 = *(a2 + 2);
          v65 = *a2;
          if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v63)
          {
            v90 = 0;
            v91 = 0;
            v68 = 0;
            v92 = (v65 + v64);
            v18 = v63 >= v64;
            v93 = v63 - v64;
            if (!v18)
            {
              v93 = 0;
            }

            v94 = v64 + 1;
            while (1)
            {
              if (!v93)
              {
                LODWORD(v68) = 0;
                *(a2 + 24) = 1;
                goto LABEL_130;
              }

              v95 = *v92;
              *(a2 + 1) = v94;
              v68 |= (v95 & 0x7F) << v90;
              if ((v95 & 0x80) == 0)
              {
                break;
              }

              v90 += 7;
              ++v92;
              --v93;
              ++v94;
              v14 = v91++ > 8;
              if (v14)
              {
LABEL_111:
                LODWORD(v68) = 0;
                goto LABEL_130;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v68) = 0;
            }
          }

          else
          {
            v66 = 0;
            v67 = 0;
            v68 = 0;
            v69 = (v65 + v64);
            v70 = v64 + 1;
            while (1)
            {
              *(a2 + 1) = v70;
              v71 = *v69++;
              v68 |= (v71 & 0x7F) << v66;
              if ((v71 & 0x80) == 0)
              {
                break;
              }

              v66 += 7;
              ++v70;
              v14 = v67++ > 8;
              if (v14)
              {
                goto LABEL_111;
              }
            }
          }

LABEL_130:
          *(this + 11) = v68;
          goto LABEL_18;
        case 0xA:
          *(this + 60) |= 0x10u;
          v51 = *(a2 + 1);
          v50 = *(a2 + 2);
          v52 = *a2;
          if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
          {
            v72 = 0;
            v73 = 0;
            v55 = 0;
            v74 = (v52 + v51);
            v18 = v50 >= v51;
            v75 = v50 - v51;
            if (!v18)
            {
              v75 = 0;
            }

            v76 = v51 + 1;
            while (1)
            {
              if (!v75)
              {
                LODWORD(v55) = 0;
                *(a2 + 24) = 1;
                goto LABEL_121;
              }

              v77 = *v74;
              *(a2 + 1) = v76;
              v55 |= (v77 & 0x7F) << v72;
              if ((v77 & 0x80) == 0)
              {
                break;
              }

              v72 += 7;
              ++v74;
              --v75;
              ++v76;
              v14 = v73++ > 8;
              if (v14)
              {
LABEL_85:
                LODWORD(v55) = 0;
                goto LABEL_121;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v55) = 0;
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
                goto LABEL_85;
              }
            }
          }

LABEL_121:
          *(this + 13) = v55;
          goto LABEL_18;
        case 0xB:
          *(this + 60) |= 8u;
          v37 = *(a2 + 1);
          v36 = *(a2 + 2);
          v38 = *a2;
          if (v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36)
          {
            v84 = 0;
            v85 = 0;
            v41 = 0;
            v86 = (v38 + v37);
            v18 = v36 >= v37;
            v87 = v36 - v37;
            if (!v18)
            {
              v87 = 0;
            }

            v88 = v37 + 1;
            while (1)
            {
              if (!v87)
              {
                LODWORD(v41) = 0;
                *(a2 + 24) = 1;
                goto LABEL_127;
              }

              v89 = *v86;
              *(a2 + 1) = v88;
              v41 |= (v89 & 0x7F) << v84;
              if ((v89 & 0x80) == 0)
              {
                break;
              }

              v84 += 7;
              ++v86;
              --v87;
              ++v88;
              v14 = v85++ > 8;
              if (v14)
              {
LABEL_103:
                LODWORD(v41) = 0;
                goto LABEL_127;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v41) = 0;
            }
          }

          else
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = (v38 + v37);
            v43 = v37 + 1;
            while (1)
            {
              *(a2 + 1) = v43;
              v44 = *v42++;
              v41 |= (v44 & 0x7F) << v39;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              ++v43;
              v14 = v40++ > 8;
              if (v14)
              {
                goto LABEL_103;
              }
            }
          }

LABEL_127:
          *(this + 12) = v41;
          goto LABEL_18;
      }
    }

    else
    {
      switch(v22)
      {
        case 6:
          *(this + 60) |= 0x80u;
          v59 = *(a2 + 1);
          if (v59 >= *(a2 + 2))
          {
            v62 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v60 = v59 + 1;
            v61 = *(*a2 + v59);
            *(a2 + 1) = v60;
            v62 = v61 != 0;
          }

          *(this + 58) = v62;
          goto LABEL_18;
        case 7:
          *(this + 60) |= 1u;
          v49 = *(a2 + 1);
          if (v49 <= 0xFFFFFFFFFFFFFFF7 && v49 + 8 <= *(a2 + 2))
          {
            *(this + 1) = *(*a2 + v49);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_18;
        case 8:
          *(this + 60) |= 2u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v78 = 0;
            v79 = 0;
            v28 = 0;
            v80 = (v25 + v24);
            v18 = v23 >= v24;
            v81 = v23 - v24;
            if (!v18)
            {
              v81 = 0;
            }

            v82 = v24 + 1;
            while (1)
            {
              if (!v81)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_124;
              }

              v83 = *v80;
              *(a2 + 1) = v82;
              v28 |= (v83 & 0x7F) << v78;
              if ((v83 & 0x80) == 0)
              {
                break;
              }

              v78 += 7;
              ++v80;
              --v81;
              ++v82;
              v14 = v79++ > 8;
              if (v14)
              {
LABEL_95:
                LODWORD(v28) = 0;
                goto LABEL_124;
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
                goto LABEL_95;
              }
            }
          }

LABEL_124:
          *(this + 10) = v28;
          goto LABEL_18;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v96 = 0;
      return v96 & 1;
    }

LABEL_18:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v96 = v4 ^ 1;
  return v96 & 1;
}

void sirinluexternal::AsrTokenInformation::~AsrTokenInformation(sirinluexternal::AsrTokenInformation *this)
{
  sirinluexternal::AsrTokenInformation::~AsrTokenInformation(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878F08;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluexternal::AsrTokenInformation::AsrTokenInformation(uint64_t this)
{
  *this = &unk_1F4878F08;
  *(this + 60) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4878F08;
  *(this + 60) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t sirinluexternal::AsrTokenInformation::AsrTokenInformation(uint64_t this, const sirinluexternal::AsrTokenInformation *a2)
{
  *this = &unk_1F4878F08;
  *(this + 16) = 0;
  *(this + 60) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 3))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  v2 = *(a2 + 60);
  if ((v2 & 0x20) != 0)
  {
    v4 = *(a2 + 56);
    *(this + 60) |= 0x20u;
    *(this + 56) = v4;
    v2 = *(a2 + 60);
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else if ((*(a2 + 60) & 0x40) == 0)
  {
    goto LABEL_9;
  }

  v5 = *(a2 + 57);
  *(this + 60) |= 0x40u;
  *(this + 57) = v5;
  v2 = *(a2 + 60);
  if ((v2 & 0x80) == 0)
  {
LABEL_10:
    if ((v2 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = *(a2 + 58);
  *(this + 60) |= 0x80u;
  *(this + 58) = v6;
  v2 = *(a2 + 60);
  if ((v2 & 1) == 0)
  {
LABEL_11:
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = *(a2 + 1);
  *(this + 60) |= 1u;
  *(this + 8) = v7;
  v2 = *(a2 + 60);
  if ((v2 & 2) == 0)
  {
LABEL_12:
    if ((v2 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = *(a2 + 10);
  *(this + 60) |= 2u;
  *(this + 40) = v8;
  v2 = *(a2 + 60);
  if ((v2 & 4) == 0)
  {
LABEL_13:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = *(a2 + 11);
  *(this + 60) |= 4u;
  *(this + 44) = v9;
  v2 = *(a2 + 60);
  if ((v2 & 0x10) == 0)
  {
LABEL_14:
    if ((v2 & 8) == 0)
    {
      return this;
    }

    goto LABEL_15;
  }

LABEL_23:
  v10 = *(a2 + 13);
  *(this + 60) |= 0x10u;
  *(this + 52) = v10;
  if ((*(a2 + 60) & 8) == 0)
  {
    return this;
  }

LABEL_15:
  v3 = *(a2 + 12);
  *(this + 60) |= 8u;
  *(this + 48) = v3;
  return this;
}

sirinluexternal *sirinluexternal::AsrTokenInformation::operator=(sirinluexternal *a1, const sirinluexternal::AsrTokenInformation *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::AsrTokenInformation::AsrTokenInformation(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::AsrTokenInformation::~AsrTokenInformation(v5);
  }

  return a1;
}

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::AsrTokenInformation *a2, sirinluexternal::AsrTokenInformation *a3)
{
  v3 = *(this + 15);
  *(this + 15) = *(a2 + 15);
  *(a2 + 15) = v3;
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LOBYTE(v6) = *(this + 56);
  *(this + 56) = *(a2 + 56);
  *(a2 + 56) = v6;
  LOBYTE(v6) = *(this + 57);
  *(this + 57) = *(a2 + 57);
  *(a2 + 57) = v6;
  LOBYTE(v6) = *(this + 58);
  *(this + 58) = *(a2 + 58);
  *(a2 + 58) = v6;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  LODWORD(v6) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v6;
  LODWORD(v6) = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v6;
  LODWORD(v6) = *(this + 13);
  *(this + 13) = *(a2 + 13);
  *(a2 + 13) = v6;
  LODWORD(v6) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v6;
  return result;
}

uint64_t sirinluexternal::AsrTokenInformation::AsrTokenInformation(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878F08;
  *(a1 + 16) = 0;
  v4 = (a1 + 16);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 60) = *(a2 + 60);
  *(a2 + 60) = 0;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v6);
  }

  v7 = *(a2 + 24);
  *(a2 + 24) = 0;
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;
  if (v8)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v8);
  }

  v9 = *(a2 + 16);
  *(a2 + 16) = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

sirinluexternal *sirinluexternal::AsrTokenInformation::operator=(sirinluexternal *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::AsrTokenInformation::AsrTokenInformation(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::AsrTokenInformation::~AsrTokenInformation(v5);
  }

  return a1;
}

BOOL sirinluexternal::AsrTokenInformation::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
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

    v10 = v6 >= 0 ? *(a1 + 32) : *v4;
    v11 = v9 >= 0 ? *(a2 + 32) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 24);
  v14 = *(a2 + 24);
  if (v13)
  {
    if (!v14)
    {
      return 0;
    }

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

    if (v16 != v17)
    {
      return 0;
    }

    v19 = v15 >= 0 ? *(a1 + 24) : *v13;
    v20 = v18 >= 0 ? *(a2 + 24) : *v14;
    if (memcmp(v19, v20, v16))
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v21 = *(a1 + 16);
  v22 = *(a2 + 16);
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v23 = *(v21 + 23);
    if (v23 >= 0)
    {
      v24 = *(v21 + 23);
    }

    else
    {
      v24 = *(v21 + 8);
    }

    v25 = *(v22 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v22 + 8);
    }

    if (v24 != v25)
    {
      return 0;
    }

    v27 = v23 >= 0 ? *(a1 + 16) : *v21;
    v28 = v26 >= 0 ? *(a2 + 16) : *v22;
    if (memcmp(v27, v28, v24))
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v29 = *(a1 + 60);
  v30 = *(a2 + 60);
  if ((v29 & 0x20) != 0)
  {
    if ((v30 & 0x20) == 0 || *(a1 + 56) != *(a2 + 56))
    {
      return 0;
    }
  }

  else if ((v30 & 0x20) != 0)
  {
    return 0;
  }

  if ((v29 & 0x40) != 0)
  {
    if ((v30 & 0x40) == 0 || *(a1 + 57) != *(a2 + 57))
    {
      return 0;
    }
  }

  else if ((v30 & 0x40) != 0)
  {
    return 0;
  }

  if ((v29 & v30 & 0x80) != 0)
  {
    if (*(a1 + 58) != *(a2 + 58))
    {
      return 0;
    }
  }

  else if (((v29 | v30) & 0x80) != 0)
  {
    return 0;
  }

  if (v29)
  {
    if ((v30 & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  if ((v29 & 2) != 0)
  {
    if ((v30 & 2) == 0 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  else if ((v30 & 2) != 0)
  {
    return 0;
  }

  if ((v29 & 4) != 0)
  {
    if ((v30 & 4) == 0 || *(a1 + 44) != *(a2 + 44))
    {
      return 0;
    }
  }

  else if ((v30 & 4) != 0)
  {
    return 0;
  }

  if ((v29 & 0x10) == 0)
  {
    if ((v30 & 0x10) == 0)
    {
      goto LABEL_88;
    }

    return 0;
  }

  if ((v30 & 0x10) == 0 || *(a1 + 52) != *(a2 + 52))
  {
    return 0;
  }

LABEL_88:
  result = (v30 & 8) == 0;
  if ((v29 & 8) != 0)
  {
    return (v30 & 8) != 0 && *(a1 + 48) == *(a2 + 48);
  }

  return result;
}

unint64_t sirinluexternal::AsrTokenInformation::hash_value(sirinluexternal::AsrTokenInformation *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = std::__string_hash<char>::operator()[abi:ne200100](v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100](v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 2);
  if (v6)
  {
    v6 = std::__string_hash<char>::operator()[abi:ne200100](v6);
  }

  if ((*(this + 60) & 0x20) != 0)
  {
    v7 = *(this + 56);
    if ((*(this + 60) & 0x40) != 0)
    {
LABEL_11:
      v8 = *(this + 57);
      if ((*(this + 60) & 0x80) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v7 = 0;
    if ((*(this + 60) & 0x40) != 0)
    {
      goto LABEL_11;
    }
  }

  v8 = 0;
  if ((*(this + 60) & 0x80) != 0)
  {
LABEL_12:
    v9 = *(this + 58);
    if (*(this + 60))
    {
      goto LABEL_13;
    }

LABEL_23:
    v10 = 0.0;
    if ((*(this + 60) & 2) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

LABEL_22:
  v9 = 0;
  if ((*(this + 60) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v10 = *(this + 1);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  if ((*(this + 60) & 2) != 0)
  {
LABEL_16:
    v11 = *(this + 10);
    if ((*(this + 60) & 4) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*(this + 60) & 4) != 0)
  {
LABEL_17:
    v12 = *(this + 11);
    if ((*(this + 60) & 0x10) != 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    v13 = 0;
    if ((*(this + 60) & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_27:
    v14 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_25:
  v12 = 0;
  if ((*(this + 60) & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  v13 = *(this + 13);
  if ((*(this + 60) & 8) == 0)
  {
    goto LABEL_27;
  }

LABEL_19:
  v14 = *(this + 12);
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ *&v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::formatText(sirinluinternalnlv4_parser::NLv4ParserRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "embeddings");
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "matching_spans");
  }

  if (*(this + 80))
  {
    v9 = *(this + 5);
    PB::TextFormatter::format(a2, "max_num_parses");
  }

  v10 = *(this + 6);
  if (v10)
  {
    (*(*v10 + 32))(v10, a2, "nlu_request_id");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "request_id");
  }

  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "tokenised_utterance");
  }

  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "turn_input");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 64);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v6 = *(v3 + 8);
  if (v6)
  {
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  while (v7 != v8)
  {
    v9 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v9);
  }

  v10 = *(v3 + 72);
  if (v10)
  {
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  if (*(v3 + 80))
  {
    v11 = *(v3 + 40);
    this = PB::Writer::writeVarInt(a2);
  }

  v12 = *(v3 + 48);
  if (v12)
  {

    return PB::Writer::writeSubmessage(a2, v12);
  }

  return this;
}

double sirinluinternalnlv4_parser::NLv4ParserRequest::NLv4ParserRequest(sirinluinternalnlv4_parser::NLv4ParserRequest *this)
{
  *this = &unk_1F4878F58;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

{
  *this = &unk_1F4878F58;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  return result;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::NLv4ParserRequest(uint64_t this, const sirinluinternalnlv4_parser::NLv4ParserRequest *a2)
{
  *this = &unk_1F4878F58;
  *(this + 8) = 0u;
  *(this + 48) = 0u;
  *(this + 24) = 0u;
  *(this + 64) = 0u;
  *(this + 80) = 0;
  if (*(a2 + 7))
  {
    operator new();
  }

  if (*(a2 + 8))
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
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 80))
  {
    v4 = *(a2 + 5);
    *(this + 80) |= 1u;
    *(this + 40) = v4;
  }

  if (*(a2 + 6))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::operator=(uint64_t a1, const sirinluinternalnlv4_parser::NLv4ParserRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalnlv4_parser::NLv4ParserRequest::NLv4ParserRequest(v12, a2);
    v3 = v14;
    v4 = *(a1 + 8);
    *(a1 + 8) = v13;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v13 = v4;
    v14 = v5;
    v6 = v17;
    v8 = *(a1 + 48);
    v7 = *(a1 + 64);
    *(a1 + 48) = v16;
    *(a1 + 64) = v6;
    v9 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v9;
    v10 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v10;
    v17 = v7;
    v16 = v8;
    sirinluinternalnlv4_parser::NLv4ParserRequest::~NLv4ParserRequest(v12);
  }

  return a1;
}

uint64_t sirinluinternalnlv4_parser::swap(uint64_t this, sirinluinternalnlv4_parser::NLv4ParserRequest *a2, sirinluinternalnlv4_parser::NLv4ParserRequest *a3)
{
  v3 = *(this + 80);
  *(this + 80) = *(a2 + 20);
  *(a2 + 20) = v3;
  v4 = *(this + 56);
  *(this + 56) = *(a2 + 7);
  *(a2 + 7) = v4;
  v5 = *(this + 64);
  *(this + 64) = *(a2 + 8);
  *(a2 + 8) = v5;
  v6 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v6;
  v7 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 32);
  v10 = *(this + 40);
  v11 = *(a2 + 5);
  *(this + 32) = *(a2 + 4);
  *(this + 40) = v11;
  *(a2 + 4) = v9;
  v12 = *(this + 72);
  *(this + 72) = *(a2 + 9);
  *(a2 + 9) = v12;
  *(a2 + 5) = v10;
  v13 = *(this + 48);
  *(this + 48) = *(a2 + 6);
  *(a2 + 6) = v13;
  return this;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::NLv4ParserRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878F58;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v6 = *(a1 + 56);
  *(a1 + 56) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(a2 + 64);
  *(a2 + 64) = 0;
  v8 = *(a1 + 64);
  *(a1 + 64) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v11 = *(a2 + 72);
  *(a2 + 72) = 0;
  v12 = *(a1 + 72);
  *(a1 + 72) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a2 + 40);
  v14 = *(a2 + 48);
  *(a2 + 48) = 0;
  v15 = *(a1 + 48);
  *(a1 + 40) = v13;
  *(a1 + 48) = v14;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return a1;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalnlv4_parser::NLv4ParserRequest::NLv4ParserRequest(v12, a2);
    v3 = v14;
    v4 = *(a1 + 8);
    *(a1 + 8) = v13;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v13 = v4;
    v14 = v5;
    v6 = v17;
    v8 = *(a1 + 48);
    v7 = *(a1 + 64);
    *(a1 + 48) = v16;
    *(a1 + 64) = v6;
    v9 = *(a1 + 80);
    *(a1 + 80) = v18;
    v18 = v9;
    v10 = *(a1 + 40);
    *(a1 + 40) = v15;
    v15 = v10;
    v17 = v7;
    v16 = v8;
    sirinluinternalnlv4_parser::NLv4ParserRequest::~NLv4ParserRequest(v12);
  }

  return a1;
}

BOOL sirinluinternalnlv4_parser::NLv4ParserRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
  if (v4)
  {
    if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 64);
  v7 = *(a2 + 64);
  if (v6)
  {
    if (!v7 || !sirinluinternalnlv4_parser::Tokenisation::operator==(v6, v7))
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v9 = *(a2 + 8);
  if (v8)
  {
    if (!v9 || !sirinluinternal::NLv4EmbeddingTensor::operator==(v8, v9))
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluinternal::MatchingSpan>::operator==((a1 + 16), *(a2 + 16), *(a2 + 24));
  if (!result)
  {
    return result;
  }

  v11 = *(a1 + 72);
  v12 = *(a2 + 72);
  if (v11)
  {
    if (!v12 || !sirinluexternal::TurnInput::operator==(v11, v12))
    {
      return 0;
    }
  }

  else if (v12)
  {
    return 0;
  }

  v13 = *(a2 + 80);
  if ((*(a1 + 80) & 1) == 0)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if ((*(a2 + 80) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

LABEL_29:
  v14 = *(a1 + 48);
  v15 = *(a2 + 48);
  result = (v14 | v15) == 0;
  if (v14 && v15)
  {
    v16 = *(a1 + 48);

    return sirinluexternal::RequestID::operator==(v16, v15);
  }

  return result;
}

unint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::hash_value(sirinluinternalnlv4_parser::NLv4ParserRequest *this)
{
  v2 = *(this + 7);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 28) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 16);
  if ((*(v2 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 24);
LABEL_10:
  v6 = v4 ^ v3 ^ v5;
LABEL_11:
  v7 = *(this + 8);
  if (v7)
  {
    v8 = sirinluinternalnlv4_parser::Tokenisation::hash_value(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(this + 1);
  if (v9)
  {
    v10 = sirinluinternal::NLv4EmbeddingTensor::hash_value(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(this + 2);
  v12 = *(this + 3);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v11++;
      v13 ^= sirinluinternal::MatchingSpan::hash_value(v14);
    }

    while (v11 != v12);
  }

  v15 = *(this + 9);
  if (v15)
  {
    v16 = sirinluexternal::TurnInput::hash_value(v15);
  }

  else
  {
    v16 = 0;
  }

  if (*(this + 80))
  {
    v17 = *(this + 5);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(this + 6);
  if (v18)
  {
    v18 = sirinluexternal::RequestID::hash_value(v18);
  }

  return v8 ^ v6 ^ v10 ^ v16 ^ v17 ^ v18 ^ v13;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::makeTokenisedUtterance(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::makeEmbeddings(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::makeTurnInput(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalnlv4_parser::NLv4ParserRequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 48))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUEXTERNALMatchInfoReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = 0x1EC2B2000uLL;
    v6 = 0x1EC2B2000uLL;
    v7 = 0x1E8323000uLL;
    v8 = 0x1EC2B2000uLL;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v41) = 0;
        v12 = [a2 position] + 1;
        if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
        {
          v14 = [a2 data];
          [v14 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v11 |= (v41 & 0x7F) << v9;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [a2 hasError] ? 0 : v11;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 5)
      {
        if (v17 <= 7)
        {
          if (v17 == 6)
          {
            v18 = objc_alloc_init(SIRICOMMONUInt32Value);
            v19 = 64;
            goto LABEL_59;
          }

          if (v17 == 7)
          {
            v18 = objc_alloc_init(SIRICOMMONUInt32Value);
            v19 = 32;
            goto LABEL_59;
          }
        }

        else
        {
          switch(v17)
          {
            case 8:
              v18 = objc_alloc_init(SIRICOMMONUInt32Value);
              v19 = 80;
              goto LABEL_59;
            case 9:
              v18 = objc_alloc_init(SIRICOMMONUInt32Value);
              v19 = 56;
              goto LABEL_59;
            case 0xA:
              if ((v16 & 7) == 2)
              {
                v41 = 0;
                v42 = 0;
                result = PBReaderPlaceMark();
                if (!result)
                {
                  return result;
                }

                while (1)
                {
                  v21 = [a2 position];
                  if (v21 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                  {
                    break;
                  }

                  v22 = 0;
                  v23 = 0;
                  v24 = 0;
                  while (1)
                  {
                    v43 = 0;
                    v25 = [a2 position] + 1;
                    if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
                    {
                      v27 = [a2 data];
                      [v27 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

                      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                    }

                    else
                    {
                      [a2 _setError];
                    }

                    v24 |= (v43 & 0x7F) << v22;
                    if ((v43 & 0x80) == 0)
                    {
                      break;
                    }

                    v22 += 7;
                    v15 = v23++ >= 9;
                    if (v15)
                    {
                      goto LABEL_42;
                    }
                  }

                  [a2 hasError];
LABEL_42:
                  PBRepeatedInt32Add();
                }

                PBReaderRecallMark();
              }

              else
              {
                v31 = v7;
                v32 = v6;
                v33 = v5;
                v34 = 0;
                v35 = 0;
                v36 = 0;
                while (1)
                {
                  LOBYTE(v41) = 0;
                  v37 = [a2 position] + 1;
                  if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
                  {
                    v39 = [a2 data];
                    [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v36 |= (v41 & 0x7F) << v34;
                  if ((v41 & 0x80) == 0)
                  {
                    break;
                  }

                  v34 += 7;
                  v15 = v35++ >= 9;
                  if (v15)
                  {
                    goto LABEL_77;
                  }
                }

                [a2 hasError];
LABEL_77:
                PBRepeatedInt32Add();
                v5 = v33;
                v6 = v32;
                v7 = v31;
                v8 = 0x1EC2B2000;
              }

              goto LABEL_62;
          }
        }
      }

      else if (v17 <= 2)
      {
        if (v17 == 1)
        {
          *(a1 + *(v5 + 3548)) |= 1u;
          LODWORD(v41) = 0;
          v28 = [a2 position] + 4;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 4, v29 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v41 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + *(v6 + 3552)) = v41;
          goto LABEL_62;
        }

        if (v17 == 2)
        {
          v18 = objc_alloc_init(*(v7 + 344));
          objc_storeStrong((a1 + *(v8 + 3556)), v18);
          v41 = 0;
          v42 = 0;
          if (!PBReaderPlaceMark() || !SIRICOMMONFloatValueReadFrom(v18, a2))
          {
LABEL_82:

            return 0;
          }

          goto LABEL_61;
        }
      }

      else
      {
        switch(v17)
        {
          case 3:
            v18 = objc_alloc_init(SIRICOMMONUInt32Value);
            v19 = 96;
            goto LABEL_59;
          case 4:
            v18 = objc_alloc_init(SIRICOMMONUInt32Value);
            v19 = 72;
            goto LABEL_59;
          case 5:
            v18 = objc_alloc_init(SIRICOMMONUInt32Value);
            v19 = 88;
LABEL_59:
            objc_storeStrong((a1 + v19), v18);
            v41 = 0;
            v42 = 0;
            if (!PBReaderPlaceMark() || !SIRICOMMONUInt32ValueReadFrom(v18, a2))
            {
              goto LABEL_82;
            }

LABEL_61:
            PBReaderRecallMark();

            goto LABEL_62;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_62:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALUsoEdgeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v31[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31[0] & 0x7F) << v5;
        if ((v31[0] & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v27 = objc_alloc_init(SIRINLUEXTERNALUsoEdgeLabel);
        objc_storeStrong((a1 + 16), v27);
        v31[0] = 0;
        v31[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoEdgeLabelReadFrom(v27, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 28) |= 2u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v31[0] & 0x7F) << v21;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_46;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_46:
          v28 = 24;
          goto LABEL_51;
        }

        if (v13 == 1)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            LOBYTE(v31[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v31[0] & 0x7F) << v14;
            if ((v31[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_50;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_50:
          v28 = 8;
LABEL_51:
          *(a1 + v28) = v20;
          goto LABEL_52;
        }

        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

LABEL_52:
      v29 = [a2 position];
    }

    while (v29 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::formatText(sirinluinternalcontextupdate::ContextUpdateRequest *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "current_turn");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "nlu_request_id");
  }

  v7 = *(this + 3);
  v8 = *(this + 4);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, a2, "previous_turns");
  }

  v10 = *(this + 6);
  v11 = *(this + 7);
  while (v10 != v11)
  {
    v12 = *v10++;
    (*(*v12 + 32))(v12, a2, "qr_hypotheses");
  }

  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "request_id");
  }

  if (*(this + 10))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[3];
  v6 = v3[4];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[6];
  v9 = v3[7];
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[9];
  if (v11)
  {
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  if (v3[10])
  {
    this = PB::Writer::write();
  }

  v12 = v3[2];
  if (v12)
  {

    return PB::Writer::writeSubmessage(a2, v12);
  }

  return this;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::readFrom(sirinluinternalcontextupdate::ContextUpdateRequest *this, PB::Reader *a2)
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
        goto LABEL_37;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 3)
      {
        switch(v21)
        {
          case 4:
            operator new();
          case 5:
            operator new();
          case 6:
            operator new();
        }
      }

      else
      {
        switch(v21)
        {
          case 1:
            operator new();
          case 2:
            PB::PtrVector<sirinluexternal::TurnInput>::emplace_back<>();
          case 3:
            PB::PtrVector<sirinluinternal::RewriteHypothesis>::emplace_back<>();
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
        goto LABEL_37;
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

LABEL_37:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluinternalcontextupdate::ContextUpdateRequest::~ContextUpdateRequest(sirinluinternalcontextupdate::ContextUpdateRequest *this)
{
  sirinluinternalcontextupdate::ContextUpdateRequest::~ContextUpdateRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4878FA8;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v6 = (this + 48);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 24);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v6);
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

double sirinluinternalcontextupdate::ContextUpdateRequest::ContextUpdateRequest(sirinluinternalcontextupdate::ContextUpdateRequest *this)
{
  *this = &unk_1F4878FA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

{
  *this = &unk_1F4878FA8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::ContextUpdateRequest(uint64_t this, const sirinluinternalcontextupdate::ContextUpdateRequest *a2)
{
  *this = &unk_1F4878FA8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  if (*(a2 + 1))
  {
    operator new();
  }

  v2 = *(a2 + 3);
  if (v2 != *(a2 + 4))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::TurnInput>::emplace_back<sirinluexternal::TurnInput const&>();
  }

  v4 = *(a2 + 6);
  if (v4 != *(a2 + 7))
  {
    v5 = *v4;
    PB::PtrVector<sirinluinternal::RewriteHypothesis>::emplace_back<sirinluinternal::RewriteHypothesis const&>();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  if (*(a2 + 2))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::operator=(uint64_t a1, const sirinluinternalcontextupdate::ContextUpdateRequest *a2)
{
  if (a1 != a2)
  {
    sirinluinternalcontextupdate::ContextUpdateRequest::ContextUpdateRequest(v11, a2);
    v3 = v14;
    v4 = *(a1 + 24);
    *(a1 + 24) = v13;
    v5 = *(a1 + 40);
    *(a1 + 40) = v3;
    v13 = v4;
    v14 = v5;
    v6 = v16;
    v7 = *(a1 + 56);
    *(a1 + 56) = v15;
    v8 = *(a1 + 72);
    *(a1 + 72) = v6;
    v15 = v7;
    v16 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v9;
    sirinluinternalcontextupdate::ContextUpdateRequest::~ContextUpdateRequest(v11);
  }

  return a1;
}

void *sirinluinternalcontextupdate::swap(void *this, sirinluinternalcontextupdate::ContextUpdateRequest *a2, sirinluinternalcontextupdate::ContextUpdateRequest *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v4;
  v5 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v5;
  v6 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v6;
  v7 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v7;
  v8 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v8;
  v9 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v9;
  v10 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v10;
  v11 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v11;
  v12 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v12;
  return this;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::ContextUpdateRequest(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878FA8;
  *(a1 + 24) = 0u;
  v4 = (a1 + 24);
  *(a1 + 8) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v5 = *(a2 + 8);
  *(a2 + 8) = 0;
  v6 = *(a1 + 8);
  *(a1 + 8) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a2 + 80);
  *(a2 + 80) = 0;
  v10 = *(a1 + 80);
  *(a1 + 80) = v9;
  if (v10)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v10);
  }

  v11 = *(a2 + 16);
  *(a2 + 16) = 0;
  v12 = *(a1 + 16);
  *(a1 + 16) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternalcontextupdate::ContextUpdateRequest::ContextUpdateRequest(v11, a2);
    v3 = v14;
    v4 = *(a1 + 24);
    *(a1 + 24) = v13;
    v5 = *(a1 + 40);
    *(a1 + 40) = v3;
    v13 = v4;
    v14 = v5;
    v6 = v16;
    v7 = *(a1 + 56);
    *(a1 + 56) = v15;
    v8 = *(a1 + 72);
    *(a1 + 72) = v6;
    v15 = v7;
    v16 = v8;
    v9 = *(a1 + 8);
    *(a1 + 8) = v12;
    v12 = v9;
    sirinluinternalcontextupdate::ContextUpdateRequest::~ContextUpdateRequest(v11);
  }

  return a1;
}

BOOL sirinluinternalcontextupdate::ContextUpdateRequest::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !sirinluexternal::TurnInput::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = PB::PtrVector<sirinluexternal::TurnInput>::operator==((a1 + 24), *(a2 + 24), *(a2 + 32));
  if (!result)
  {
    return result;
  }

  result = PB::PtrVector<sirinluinternal::RewriteHypothesis>::operator==(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56));
  if (!result)
  {
    return result;
  }

  v7 = *(a1 + 72);
  v8 = *(a2 + 72);
  if (v7)
  {
    if (!v8 || !sirinluexternal::UUID::operator==(v7, v8))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(a1 + 80);
  v10 = *(a2 + 80);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (!v10 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v9, v10))
  {
    return 0;
  }

LABEL_20:
  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  result = (v11 | v12) == 0;
  if (v11 && v12)
  {
    v13 = *(a1 + 16);

    return sirinluexternal::UUID::operator==(v13, v12);
  }

  return result;
}

unint64_t sirinluinternalcontextupdate::ContextUpdateRequest::hash_value(sirinluinternalcontextupdate::ContextUpdateRequest *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    v3 = sirinluexternal::TurnInput::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 3);
  v5 = *(this + 4);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= sirinluexternal::TurnInput::hash_value(v7);
    }

    while (v4 != v5);
  }

  v8 = *(this + 6);
  v9 = *(this + 7);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *v8++;
      v10 ^= sirinluinternal::RewriteHypothesis::hash_value(v11);
    }

    while (v8 != v9);
  }

  v12 = *(this + 9);
  if (!v12)
  {
    v16 = 0;
    goto LABEL_24;
  }

  if ((*(v12 + 28) & 1) == 0)
  {
    v13 = 0;
    if ((*(v12 + 28) & 2) != 0)
    {
      goto LABEL_17;
    }

LABEL_21:
    v14 = 0;
    if ((*(v12 + 28) & 4) != 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  v13 = *(v12 + 8);
  if ((*(v12 + 28) & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v14 = *(v12 + 16);
  if ((*(v12 + 28) & 4) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v15 = *(v12 + 24);
LABEL_23:
  v16 = v14 ^ v13 ^ v15;
LABEL_24:
  v17 = *(this + 10);
  if (v17)
  {
    v17 = std::__string_hash<char>::operator()[abi:ne200100](v17);
  }

  v18 = *(this + 2);
  if (v18)
  {
    if (*(v18 + 28))
    {
      v19 = *(v18 + 8);
      if ((*(v18 + 28) & 2) != 0)
      {
LABEL_29:
        v20 = *(v18 + 16);
        if ((*(v18 + 28) & 4) != 0)
        {
LABEL_30:
          v21 = *(v18 + 24);
LABEL_34:
          v18 = v20 ^ v19 ^ v21;
          return v6 ^ v3 ^ v16 ^ v17 ^ v18 ^ v10;
        }

LABEL_33:
        v21 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v19 = 0;
      if ((*(v18 + 28) & 2) != 0)
      {
        goto LABEL_29;
      }
    }

    v20 = 0;
    if ((*(v18 + 28) & 4) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  return v6 ^ v3 ^ v16 ^ v17 ^ v18 ^ v10;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::makeCurrentTurn(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::makeRequestId(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalcontextupdate::ContextUpdateRequest::makeNluRequestId(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::TurnContext::formatText(sirinluexternal::TurnContext *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "legacy_nl_context");
  }

  v6 = *(this + 2);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2, "nl_context");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::TurnContext::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 16);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 8);
  if (v5)
  {

    return PB::Writer::writeSubmessage(a2, v5);
  }

  return this;
}

void *sirinluexternal::TurnContext::TurnContext(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878FF8;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_1F4878FF8;
  return this;
}

void *sirinluexternal::TurnContext::TurnContext(void *this, const sirinluexternal::TurnContext *a2)
{
  *this = &unk_1F4878FF8;
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

uint64_t sirinluexternal::TurnContext::operator=(uint64_t a1, const sirinluexternal::TurnContext *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::TurnContext::TurnContext(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::TurnContext::~TurnContext(&v5);
  }

  return a1;
}

uint64_t sirinluexternal::swap(uint64_t this, sirinluexternal::TurnContext *a2, sirinluexternal::TurnContext *a3)
{
  v3 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  return this;
}

void *sirinluexternal::TurnContext::TurnContext(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_1F4878FF8;
  a1[2] = 0;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  v6 = a1[2];
  a1[2] = v5;
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

  return a1;
}

uint64_t sirinluexternal::TurnContext::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::TurnContext::TurnContext(&v5, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6;
    v6 = v3;
    sirinluexternal::TurnContext::~TurnContext(&v5);
  }

  return a1;
}

BOOL sirinluexternal::TurnContext::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5 && sirinluexternal::NLContext::operator==(v4, v5))
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
  v6 = *(a1 + 8);
  v7 = *(a2 + 8);
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
    v10 = *(a1 + 8);

    return sirinluexternal::LegacyNLContext::operator==(v10, v7);
  }

  return result;
}

unint64_t sirinluexternal::TurnContext::hash_value(sirinluexternal::TurnContext *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    v3 = sirinluexternal::NLContext::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v4 = sirinluexternal::LegacyNLContext::hash_value(v4);
  }

  return v4 ^ v3;
}

uint64_t sirinluexternal::TurnContext::makeNlContext(uint64_t this)
{
  if (!*(this + 16))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::TurnContext::makeLegacyNlContext(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::RewriteToken::formatText(sirinluinternal::RewriteToken *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 44);
  if (v5)
  {
    PB::TextFormatter::format(a2, "asr_confidence", *(this + 1));
    v5 = *(this + 44);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(this + 8);
    PB::TextFormatter::format(a2, "end_index");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v7 = *(this + 44);
  if ((v7 & 8) != 0)
  {
    v8 = *(this + 40);
    PB::TextFormatter::format(a2, "remove_space_after");
    v7 = *(this + 44);
  }

  if ((v7 & 4) != 0)
  {
    v9 = *(this + 9);
    PB::TextFormatter::format(a2, "start_index");
  }

  if (*(this + 3))
  {
    PB::TextFormatter::format();
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::RewriteToken::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 24))
  {
    this = PB::Writer::write();
  }

  v4 = *(v3 + 44);
  if ((v4 & 4) != 0)
  {
    v5 = *(v3 + 36);
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 44);
    if ((v4 & 2) == 0)
    {
LABEL_5:
      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(v3 + 44) & 2) == 0)
  {
    goto LABEL_5;
  }

  v6 = *(v3 + 32);
  this = PB::Writer::writeVarInt(a2);
  if (*(v3 + 44))
  {
LABEL_6:
    this = PB::Writer::write(a2, *(v3 + 8));
  }

LABEL_7:
  if (*(v3 + 16))
  {
    this = PB::Writer::write();
  }

  if ((*(v3 + 44) & 8) != 0)
  {
    v7 = *(v3 + 40);

    return PB::Writer::write(a2);
  }

  return this;
}

uint64_t sirinluinternal::RewriteToken::readFrom(sirinluinternal::RewriteToken *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 3)
    {
      switch(v22)
      {
        case 4:
          *(this + 44) |= 1u;
          v36 = *(a2 + 1);
          if (v36 <= 0xFFFFFFFFFFFFFFF7 && v36 + 8 <= *(a2 + 2))
          {
            *(this + 1) = *(*a2 + v36);
            *(a2 + 1) += 8;
          }

          else
          {
            *(a2 + 24) = 1;
          }

          goto LABEL_75;
        case 5:
          operator new();
        case 6:
          *(this + 44) |= 8u;
          v32 = *(a2 + 1);
          if (v32 >= *(a2 + 2))
          {
            v35 = 0;
            *(a2 + 24) = 1;
          }

          else
          {
            v33 = v32 + 1;
            v34 = *(*a2 + v32);
            *(a2 + 1) = v33;
            v35 = v34 != 0;
          }

          *(this + 40) = v35;
          goto LABEL_75;
      }
    }

    else
    {
      switch(v22)
      {
        case 1:
          operator new();
        case 2:
          *(this + 44) |= 4u;
          v38 = *(a2 + 1);
          v37 = *(a2 + 2);
          v39 = *a2;
          if (v38 > 0xFFFFFFFFFFFFFFF5 || v38 + 10 > v37)
          {
            v52 = 0;
            v53 = 0;
            v42 = 0;
            v54 = (v39 + v38);
            v18 = v37 >= v38;
            v55 = v37 - v38;
            if (!v18)
            {
              v55 = 0;
            }

            v56 = v38 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v42) = 0;
                *(a2 + 24) = 1;
                goto LABEL_74;
              }

              v57 = *v54;
              *(a2 + 1) = v56;
              v42 |= (v57 & 0x7F) << v52;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              ++v54;
              --v55;
              ++v56;
              v14 = v53++ > 8;
              if (v14)
              {
LABEL_63:
                LODWORD(v42) = 0;
                goto LABEL_74;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v42) = 0;
            }
          }

          else
          {
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = (v39 + v38);
            v44 = v38 + 1;
            while (1)
            {
              *(a2 + 1) = v44;
              v45 = *v43++;
              v42 |= (v45 & 0x7F) << v40;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v40 += 7;
              ++v44;
              v14 = v41++ > 8;
              if (v14)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_74:
          *(this + 9) = v42;
          goto LABEL_75;
        case 3:
          *(this + 44) |= 2u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v46 = 0;
            v47 = 0;
            v28 = 0;
            v48 = (v25 + v24);
            v18 = v23 >= v24;
            v49 = v23 - v24;
            if (!v18)
            {
              v49 = 0;
            }

            v50 = v24 + 1;
            while (1)
            {
              if (!v49)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_71;
              }

              v51 = *v48;
              *(a2 + 1) = v50;
              v28 |= (v51 & 0x7F) << v46;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v46 += 7;
              ++v48;
              --v49;
              ++v50;
              v14 = v47++ > 8;
              if (v14)
              {
LABEL_55:
                LODWORD(v28) = 0;
                goto LABEL_71;
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

LABEL_71:
          *(this + 8) = v28;
          goto LABEL_75;
      }
    }

LABEL_17:
    if (!PB::Reader::skip(a2))
    {
      v59 = 0;
      return v59 & 1;
    }

LABEL_75:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v59 = v4 ^ 1;
  return v59 & 1;
}

void sirinluinternal::RewriteToken::~RewriteToken(sirinluinternal::RewriteToken *this)
{
  sirinluinternal::RewriteToken::~RewriteToken(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4879048;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

uint64_t sirinluinternal::RewriteToken::RewriteToken(uint64_t this)
{
  *this = &unk_1F4879048;
  *(this + 44) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4879048;
  *(this + 44) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t sirinluinternal::RewriteToken::RewriteToken(uint64_t this, const sirinluinternal::RewriteToken *a2)
{
  *this = &unk_1F4879048;
  *(this + 16) = 0;
  *(this + 44) = 0;
  *(this + 24) = 0;
  if (*(a2 + 3))
  {
    operator new();
  }

  v2 = *(a2 + 44);
  if ((v2 & 4) != 0)
  {
    v4 = *(a2 + 9);
    *(this + 44) |= 4u;
    *(this + 36) = v4;
    v2 = *(a2 + 44);
    if ((v2 & 2) == 0)
    {
LABEL_5:
      if ((v2 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(a2 + 44) & 2) == 0)
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 8);
  *(this + 44) |= 2u;
  *(this + 32) = v5;
  if (*(a2 + 44))
  {
LABEL_6:
    v3 = *(a2 + 1);
    *(this + 44) |= 1u;
    *(this + 8) = v3;
  }

LABEL_7:
  if (*(a2 + 2))
  {
    operator new();
  }

  if ((*(a2 + 44) & 8) != 0)
  {
    v6 = *(a2 + 40);
    *(this + 44) |= 8u;
    *(this + 40) = v6;
  }

  return this;
}

uint64_t sirinluinternal::RewriteToken::operator=(uint64_t a1, const sirinluinternal::RewriteToken *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::RewriteToken::RewriteToken(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    sirinluinternal::RewriteToken::~RewriteToken(&v8);
  }

  return a1;
}

double sirinluinternal::swap(sirinluinternal *this, sirinluinternal::RewriteToken *a2, sirinluinternal::RewriteToken *a3)
{
  v3 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v3;
  v4 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v4;
  LODWORD(v4) = *(this + 9);
  *(this + 9) = *(a2 + 9);
  *(a2 + 9) = v4;
  LODWORD(v4) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  result = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = result;
  v6 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v6;
  LOBYTE(v6) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v6;
  return result;
}

uint64_t sirinluinternal::RewriteToken::RewriteToken(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4879048;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a2 + 44) = 0;
  v4 = *(a2 + 24);
  *(a2 + 24) = 0;
  v5 = *(a1 + 24);
  *(a1 + 24) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 8) = *(a2 + 8);
  v6 = *(a2 + 16);
  *(a2 + 16) = 0;
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
  if (v7)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v7);
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sirinluinternal::RewriteToken::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::RewriteToken::RewriteToken(&v8, a2);
    v3 = *(a1 + 44);
    *(a1 + 44) = v13;
    v13 = v3;
    v4 = *(a1 + 32);
    *(a1 + 32) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 16);
    *(a1 + 16) = v10;
    v10 = v6;
    LOBYTE(v3) = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v3;
    sirinluinternal::RewriteToken::~RewriteToken(&v8);
  }

  return a1;
}

BOOL sirinluinternal::RewriteToken::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
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

    v10 = v6 >= 0 ? *(a1 + 24) : *v4;
    v11 = v9 >= 0 ? *(a2 + 24) : *v5;
    if (memcmp(v10, v11, v7))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a1 + 44);
  v14 = *(a2 + 44);
  if ((v13 & 4) != 0)
  {
    if ((*(a2 + 44) & 4) == 0 || *(a1 + 36) != *(a2 + 36))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 4) != 0)
  {
    return 0;
  }

  if ((*(a1 + 44) & 2) != 0)
  {
    if ((*(a2 + 44) & 2) == 0 || *(a1 + 32) != *(a2 + 32))
    {
      return 0;
    }
  }

  else if ((*(a2 + 44) & 2) != 0)
  {
    return 0;
  }

  if (*(a1 + 44))
  {
    if ((*(a2 + 44) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  else if (*(a2 + 44))
  {
    return 0;
  }

  v15 = *(a1 + 16);
  v16 = *(a2 + 16);
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_40;
    }

    return 0;
  }

  if (!v16 || !std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v15, v16))
  {
    return 0;
  }

LABEL_40:
  result = (v14 & 8) == 0;
  if ((v13 & 8) != 0)
  {
    return (v14 & 8) != 0 && *(a1 + 40) == *(a2 + 40);
  }

  return result;
}

unint64_t sirinluinternal::RewriteToken::hash_value(sirinluinternal::RewriteToken *this)
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

  v4 = *(this + 44);
  if ((v4 & 4) != 0)
  {
    v5 = *(this + 9);
    if ((*(this + 44) & 2) != 0)
    {
LABEL_6:
      v6 = *(this + 8);
      if (*(this + 44))
      {
        goto LABEL_7;
      }

LABEL_12:
      v7 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if ((*(this + 44) & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*(this + 44) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(this + 1) == 0.0)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(this + 1);
  }

LABEL_13:
  v8 = *(this + 2);
  if (v8)
  {
    v8 = std::__string_hash<char>::operator()[abi:ne200100](v8);
  }

  if ((v4 & 8) != 0)
  {
    v9 = *(this + 40);
  }

  else
  {
    v9 = 0;
  }

  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9;
}

uint64_t sirinluexternal::RepetitionResult::formatText(sirinluexternal::RepetitionResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 16);
  if (v5)
  {
    v6 = *(this + 2);
    PB::TextFormatter::format(a2, "asr_hypothesis_index");
    v5 = *(this + 16);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 3);
    PB::TextFormatter::format(a2, "repetition_type");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::RepetitionResult::writeTo(uint64_t this, PB::Writer *a2)
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

uint64_t sirinluexternal::RepetitionResult::readFrom(sirinluexternal::RepetitionResult *this, PB::Reader *a2)
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

void sirinluexternal::RepetitionResult::~RepetitionResult(sirinluexternal::RepetitionResult *this)
{
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

uint64_t sirinluexternal::RepetitionResult::RepetitionResult(uint64_t this)
{
  *this = &unk_1F4879098;
  *(this + 12) = 0;
  *(this + 16) = 0;
  return this;
}

{
  *this = &unk_1F4879098;
  *(this + 12) = 0;
  *(this + 16) = 0;
  return this;
}

uint64_t sirinluexternal::RepetitionResult::RepetitionResult(uint64_t this, const sirinluexternal::RepetitionResult *a2)
{
  *this = &unk_1F4879098;
  *(this + 12) = 0;
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

uint64_t sirinluexternal::RepetitionResult::operator=(uint64_t a1, const sirinluexternal::RepetitionResult *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::RepetitionResult::RepetitionResult(v6, a2);
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

double sirinluexternal::swap(sirinluexternal *this, sirinluexternal::RepetitionResult *a2, sirinluexternal::RepetitionResult *a3)
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

double sirinluexternal::RepetitionResult::RepetitionResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4879098;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

{
  *a1 = &unk_1F4879098;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = 0;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sirinluexternal::RepetitionResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v7[0] = &unk_1F4879098;
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

BOOL sirinluexternal::RepetitionResult::operator==(uint64_t a1, uint64_t a2)
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

uint64_t sirinluexternal::RepetitionResult::hash_value(sirinluexternal::RepetitionResult *this)
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

uint64_t SIRINLUEXTERNALSystemReportedFailureReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
        v15 = 8;
LABEL_25:
        objc_storeStrong((a1 + v15), v14);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUsoGraphReadFrom(&v14->super.super.isa, a2))
        {
LABEL_31:

          return 0;
        }

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = objc_alloc_init(SIRINLUEXTERNALUUID);
        objc_storeStrong((a1 + 24), v14);
        v18 = 0;
        v19 = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALUUIDReadFrom(v14, a2))
        {
          goto LABEL_31;
        }

LABEL_27:
        PBReaderRecallMark();

        goto LABEL_29;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(SIRINLUEXTERNALUsoGraph);
    v15 = 16;
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluexternal::LanguageVariantResult::formatText(sirinluexternal::LanguageVariantResult *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "multilingual_variant");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "parser");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::LanguageVariantResult::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *(this + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    this = PB::Writer::writeSubmessage(a2, v6);
  }

  v7 = *(v3 + 32);
  if (v7)
  {

    return PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluexternal::LanguageVariantResult::readFrom(sirinluexternal::LanguageVariantResult *this, PB::Reader *a2)
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

void sirinluexternal::LanguageVariantResult::~LanguageVariantResult(sirinluexternal::LanguageVariantResult *this)
{
  sirinluexternal::LanguageVariantResult::~LanguageVariantResult(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48790E8;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluexternal::LanguageVariantResult::LanguageVariantResult(sirinluexternal::LanguageVariantResult *this)
{
  *this = &unk_1F48790E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F48790E8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluexternal::LanguageVariantResult::LanguageVariantResult(uint64_t this, const sirinluexternal::LanguageVariantResult *a2)
{
  *this = &unk_1F48790E8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  if (*(a2 + 4))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::LanguageVariantResult::operator=(uint64_t a1, const sirinluexternal::LanguageVariantResult *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::LanguageVariantResult::LanguageVariantResult(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternal::LanguageVariantResult::~LanguageVariantResult(v7);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::LanguageVariantResult *a2, sirinluexternal::LanguageVariantResult *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  return this;
}

uint64_t sirinluexternal::LanguageVariantResult::LanguageVariantResult(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48790E8;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v4 = *(a1 + 32);
  *(a1 + 32) = v3;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return a1;
}

uint64_t sirinluexternal::LanguageVariantResult::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::LanguageVariantResult::LanguageVariantResult(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternal::LanguageVariantResult::~LanguageVariantResult(v7);
  }

  return a1;
}

BOOL sirinluexternal::LanguageVariantResult::operator==(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = a2[1];
  if (v2 - v3 != a2[2] - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    result = sirinluexternal::MultilingualVariant::operator==(*v3, *v4);
    if (!result)
    {
      return result;
    }

    ++v3;
    ++v4;
  }

  v8 = a1[4];
  v9 = a2[4];
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    v10 = a1[4];

    return sirinluexternal::Parser::operator==(v10, v9);
  }

  return result;
}

uint64_t sirinluexternal::LanguageVariantResult::hash_value(sirinluexternal::LanguageVariantResult *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *v2++;
      v4 ^= sirinluexternal::MultilingualVariant::hash_value(v5);
    }

    while (v2 != v3);
  }

  v6 = *(this + 4);
  if (v6)
  {
    if (*(v6 + 16))
    {
      v7 = *(v6 + 8);
      if ((*(v6 + 16) & 2) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = 0;
      if ((*(v6 + 16) & 2) != 0)
      {
LABEL_9:
        v8 = *(v6 + 12);
LABEL_12:
        v6 = v8 ^ v7;
        return v6 ^ v4;
      }
    }

    v8 = 0;
    goto LABEL_12;
  }

  return v6 ^ v4;
}

uint64_t sirinluexternal::LanguageVariantResult::makeParser(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALEMBEDDINGEmbeddingResponseReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44 & 0x7F) << v5;
        if ((v44 & 0x80) == 0)
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
      if ((v12 >> 3) > 5)
      {
        if (v13 <= 7)
        {
          if (v13 == 6)
          {
            v21 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
            v22 = 56;
            goto LABEL_49;
          }

          if (v13 == 7)
          {
            v21 = objc_alloc_init(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput);
            [a1 addEmbeddingTensorOutputs:v21];
LABEL_44:
            v44 = 0;
            v45 = 0;
            if (!PBReaderPlaceMark() || !SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutputReadFrom(v21, a2))
            {
              goto LABEL_103;
            }

LABEL_63:
            PBReaderRecallMark();

            goto LABEL_101;
          }
        }

        else
        {
          switch(v13)
          {
            case 8:
              v21 = objc_alloc_init(SIRINLUINTERNALSubwordTokenChain);
              objc_storeStrong((a1 + 72), v21);
              v44 = 0;
              v45 = 0;
              if (!PBReaderPlaceMark() || !SIRINLUINTERNALSubwordTokenChainReadFrom(v21, a2))
              {
LABEL_103:

                return 0;
              }

              goto LABEL_63;
            case 9:
              v35 = 0;
              v36 = 0;
              v37 = 0;
              *(a1 + 88) |= 4u;
              while (1)
              {
                LOBYTE(v44) = 0;
                v38 = [a2 position] + 1;
                if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
                {
                  v40 = [a2 data];
                  [v40 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v37 |= (v44 & 0x7F) << v35;
                if ((v44 & 0x80) == 0)
                {
                  break;
                }

                v35 += 7;
                v11 = v36++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_99;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v37;
              }

LABEL_99:
              v41 = 24;
              goto LABEL_100;
            case 0xA:
              v21 = objc_alloc_init(SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutput);
              [a1 addSubwordEmbeddingTensorOutputs:v21];
              goto LABEL_44;
          }
        }
      }

      else if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v21 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
          v22 = 40;
LABEL_49:
          objc_storeStrong((a1 + v22), v21);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(v21, a2))
          {
            goto LABEL_103;
          }

          goto LABEL_63;
        }

        if (v13 == 2)
        {
          v21 = objc_alloc_init(SIRINLUINTERNALTokenChain);
          objc_storeStrong((a1 + 80), v21);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenChainReadFrom(v21, a2))
          {
            goto LABEL_103;
          }

          goto LABEL_63;
        }
      }

      else
      {
        switch(v13)
        {
          case 3:
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 88) |= 8u;
            while (1)
            {
              LOBYTE(v44) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v44 & 0x7F) << v23;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_87;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v25;
            }

LABEL_87:
            v41 = 32;
            goto LABEL_100;
          case 4:
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 88) |= 2u;
            while (1)
            {
              LOBYTE(v44) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v44 & 0x7F) << v29;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_95;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v31;
            }

LABEL_95:
            v41 = 16;
            goto LABEL_100;
          case 5:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 88) |= 1u;
            while (1)
            {
              LOBYTE(v44) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v44 & 0x7F) << v14;
              if ((v44 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_91;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_91:
            v41 = 8;
LABEL_100:
            *(a1 + v41) = v20;
            goto LABEL_101;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_101:
      v42 = [a2 position];
    }

    while (v42 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALSystemPromptedReadFrom(uint64_t a1, void *a2)
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

uint64_t SIRINLUINTERNALSNLP_INTERMEDIATEITFMAssetVersionReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersion);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUINTERNALSNLP_INTERMEDIATESNLPAssetVersionReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
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

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRICOMMONBytesValueReadFrom(uint64_t a1, void *a2)
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
        v13 = PBReaderReadData();
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

uint64_t sirinluexternalcdm::NluResponse::formatText(sirinluexternalcdm::NluResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "language_variant_result");
  }

  v6 = *(this + 2);
  v7 = *(this + 3);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "parses");
  }

  v9 = *(this + 5);
  v10 = *(this + 6);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 32))(v11, a2, "repetition_results");
  }

  v12 = *(this + 8);
  if (v12)
  {
    (*(*v12 + 32))(v12, a2, "request_id");
  }

  v13 = *(this + 9);
  if (v13)
  {
    (*(*v13 + 32))(v13, a2, "response_status");
  }

  v14 = *(this + 10);
  if (v14)
  {
    (*(*v14 + 32))(v14, a2, "supplementary_output");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternalcdm::NluResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 64);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[2];
  v6 = v3[3];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[9];
  if (v8)
  {
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  v9 = v3[5];
  v10 = v3[6];
  while (v9 != v10)
  {
    v11 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v11);
  }

  v12 = v3[1];
  if (v12)
  {
    this = PB::Writer::writeSubmessage(a2, v12);
  }

  v13 = v3[10];
  if (v13)
  {

    return PB::Writer::writeSubmessage(a2, v13);
  }

  return this;
}

uint64_t sirinluexternalcdm::NluResponse::readFrom(sirinluexternalcdm::NluResponse *this, PB::Reader *a2)
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
        goto LABEL_37;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 3)
      {
        switch(v21)
        {
          case 4:
            operator new();
          case 5:
            operator new();
          case 6:
            operator new();
        }
      }

      else
      {
        switch(v21)
        {
          case 1:
            operator new();
          case 2:
            PB::PtrVector<sirinluexternal::UserParse>::emplace_back<>();
          case 3:
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
        goto LABEL_37;
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

LABEL_37:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternalcdm::NluResponse::~NluResponse(sirinluexternalcdm::NluResponse *this)
{
  sirinluexternalcdm::NluResponse::~NluResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4879138;
  v2 = *(this + 10);
  *(this + 10) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 5))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 5);
    operator delete(*(this + 5));
  }

  v6 = (this + 16);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  PB::Base::~Base(this);
}

double sirinluexternalcdm::NluResponse::NluResponse(sirinluexternalcdm::NluResponse *this)
{
  *this = &unk_1F4879138;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

{
  *this = &unk_1F4879138;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  return result;
}

uint64_t sirinluexternalcdm::NluResponse::NluResponse(uint64_t this, const sirinluexternalcdm::NluResponse *a2)
{
  *this = &unk_1F4879138;
  *(this + 8) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  if (*(a2 + 8))
  {
    operator new();
  }

  v2 = *(a2 + 2);
  if (v2 != *(a2 + 3))
  {
    v3 = *v2;
    PB::PtrVector<sirinluexternal::UserParse>::emplace_back<sirinluexternal::UserParse const&>();
  }

  if (*(a2 + 9))
  {
    operator new();
  }

  v4 = *(a2 + 5);
  if (v4 != *(a2 + 6))
  {
    v5 = *v4;
    operator new();
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 10))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalcdm::NluResponse::operator=(uint64_t a1, const sirinluexternalcdm::NluResponse *a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm::NluResponse::NluResponse(v10, a2);
    v3 = v13;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v5 = *(a1 + 40);
    *(a1 + 40) = v3;
    v12 = v4;
    v13 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v14;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    v8 = *(a1 + 72);
    *(a1 + 72) = v15;
    v14 = v6;
    v15 = v8;
    sirinluexternalcdm::NluResponse::~NluResponse(v10);
  }

  return a1;
}

void *sirinluexternalcdm::swap(void *this, sirinluexternalcdm::NluResponse *a2, sirinluexternalcdm::NluResponse *a3)
{
  v3 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  v6 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v6;
  v7 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v7;
  v8 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v11;
  v12 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v12;
  return this;
}

uint64_t sirinluexternalcdm::NluResponse::NluResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4879138;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  v5 = *(a2 + 64);
  *(a2 + 64) = 0;
  v6 = *(a1 + 64);
  *(a1 + 64) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 16));
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v7 = *(a2 + 72);
  *(a2 + 72) = 0;
  v8 = *(a1 + 72);
  *(a1 + 72) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (*v4)
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v9 = *(a2 + 8);
  *(a2 + 8) = 0;
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a2 + 80);
  *(a2 + 80) = 0;
  v12 = *(a1 + 80);
  *(a1 + 80) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  return a1;
}

uint64_t sirinluexternalcdm::NluResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternalcdm::NluResponse::NluResponse(v10, a2);
    v3 = v13;
    v4 = *(a1 + 24);
    *(a1 + 24) = v12;
    v5 = *(a1 + 40);
    *(a1 + 40) = v3;
    v12 = v4;
    v13 = v5;
    v6 = *(a1 + 56);
    *(a1 + 56) = v14;
    v7 = *(a1 + 8);
    *(a1 + 8) = v11;
    v11 = v7;
    v8 = *(a1 + 72);
    *(a1 + 72) = v15;
    v14 = v6;
    v15 = v8;
    sirinluexternalcdm::NluResponse::~NluResponse(v10);
  }

  return a1;
}

BOOL sirinluexternalcdm::NluResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  v5 = *(a2 + 64);
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

  result = PB::PtrVector<sirinluexternal::UserParse>::operator==((a1 + 16), *(a2 + 16), *(a2 + 24));
  if (!result)
  {
    return result;
  }

  v7 = *(a1 + 72);
  v8 = *(a2 + 72);
  if (v7)
  {
    if (!v8 || !sirinluexternal::ResponseStatus::operator==(v7, v8))
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  v11 = *(a2 + 40);
  if (v9 - v10 != *(a2 + 48) - v11)
  {
    return 0;
  }

  while (v10 != v9)
  {
    result = sirinluexternal::RepetitionResult::operator==(*v10, *v11);
    if (!result)
    {
      return result;
    }

    ++v10;
    ++v11;
  }

  v12 = *(a1 + 8);
  v13 = *(a2 + 8);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (!v13 || !sirinluexternal::LanguageVariantResult::operator==(v12, v13))
  {
    return 0;
  }

LABEL_23:
  v14 = *(a1 + 80);
  v15 = *(a2 + 80);
  result = (v14 | v15) == 0;
  if (v14 && v15)
  {
    v16 = *(a1 + 80);

    return sirinluexternal::NLUSupplementaryOutput::operator==(v16, v15);
  }

  return result;
}

unint64_t sirinluexternalcdm::NluResponse::hash_value(sirinluexternalcdm::NluResponse *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = sirinluexternal::RequestID::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= sirinluexternal::UserParse::hash_value(v7);
    }

    while (v4 != v5);
  }

  v8 = *(this + 9);
  if (v8)
  {
    if (*(v8 + 20))
    {
      v9 = *(v8 + 16);
    }

    else
    {
      v9 = 0;
    }

    v11 = *(v8 + 8);
    if (v11)
    {
      v11 = std::__string_hash<char>::operator()[abi:ne200100](v11);
    }

    v10 = v11 ^ v9;
  }

  else
  {
    v10 = 0;
  }

  v12 = *(this + 5);
  v13 = *(this + 6);
  if (v12 != v13)
  {
    v14 = 0;
    while (1)
    {
      v15 = *v12;
      if (*(*v12 + 16))
      {
        v16 = *(v15 + 8);
        if ((*(*v12 + 16) & 2) != 0)
        {
LABEL_23:
          v17 = *(v15 + 12);
          goto LABEL_24;
        }
      }

      else
      {
        v16 = 0;
        if ((*(*v12 + 16) & 2) != 0)
        {
          goto LABEL_23;
        }
      }

      v17 = 0;
LABEL_24:
      v14 ^= v17 ^ v16;
      if (++v12 == v13)
      {
        goto LABEL_27;
      }
    }
  }

  v14 = 0;
LABEL_27:
  v18 = *(this + 1);
  if (v18)
  {
    v19 = sirinluexternal::LanguageVariantResult::hash_value(v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = *(this + 10);
  if (v20)
  {
    v20 = sirinluexternal::NLUSupplementaryOutput::hash_value(v20);
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ v19 ^ v20;
}

uint64_t sirinluexternalcdm::NluResponse::makeRequestId(uint64_t this)
{
  if (!*(this + 64))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalcdm::NluResponse::makeResponseStatus(uint64_t this)
{
  if (!*(this + 72))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalcdm::NluResponse::makeLanguageVariantResult(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternalcdm::NluResponse::makeSupplementaryOutput(uint64_t this)
{
  if (!*(this + 80))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemInformed::formatText(sirinluexternal::SystemInformed *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "entities");
  }

  v8 = *(this + 4);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "task_id");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::SystemInformed::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 32);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  return this;
}

uint64_t sirinluexternal::SystemInformed::readFrom(sirinluexternal::SystemInformed *this, PB::Reader *a2)
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

void sirinluexternal::SystemInformed::~SystemInformed(sirinluexternal::SystemInformed *this)
{
  sirinluexternal::SystemInformed::~SystemInformed(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4879188;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluexternal::SystemInformed::SystemInformed(sirinluexternal::SystemInformed *this)
{
  *this = &unk_1F4879188;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4879188;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t sirinluexternal::SystemInformed::SystemInformed(uint64_t this, const sirinluexternal::SystemInformed *a2)
{
  *this = &unk_1F4879188;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 4))
  {
    operator new();
  }

  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    operator new();
  }

  return this;
}

uint64_t sirinluexternal::SystemInformed::operator=(uint64_t a1, const sirinluexternal::SystemInformed *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemInformed::SystemInformed(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternal::SystemInformed::~SystemInformed(v7);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::SystemInformed *a2, sirinluexternal::SystemInformed *a3)
{
  v3 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  return this;
}

uint64_t sirinluexternal::SystemInformed::SystemInformed(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F4879188;
  *(a1 + 24) = 0u;
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    if (*v4)
    {
      std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
      operator delete(*v4);
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
    }
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluexternal::SystemInformed::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::SystemInformed::SystemInformed(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluexternal::SystemInformed::~SystemInformed(v7);
  }

  return a1;
}

BOOL sirinluexternal::SystemInformed::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4)
  {
    if (!v5 || !sirinluexternal::UUID::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1 + 8;
  v6 = *(a1 + 8);
  v7 = *(v8 + 8);
  v10 = a2 + 8;
  v9 = *(a2 + 8);
  if (v7 - v6 != *(v10 + 8) - v9)
  {
    return 0;
  }

  if (v6 == v7)
  {
    return 1;
  }

  do
  {
    v12 = *v6;
    v6 += 8;
    v11 = v12;
    v13 = *v9++;
    result = sirinluexternal::UsoGraph::operator==(v11, v13);
  }

  while (result && v6 != v7);
  return result;
}

uint64_t sirinluexternal::SystemInformed::hash_value(sirinluexternal::SystemInformed *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    v5 = 0;
    goto LABEL_11;
  }

  if ((*(v1 + 28) & 1) == 0)
  {
    v2 = 0;
    if ((*(v1 + 28) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v3 = 0;
    if ((*(v1 + 28) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = 0;
    goto LABEL_10;
  }

  v2 = *(v1 + 8);
  if ((*(v1 + 28) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v3 = *(v1 + 16);
  if ((*(v1 + 28) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v4 = *(v1 + 24);
LABEL_10:
  v5 = v3 ^ v2 ^ v4;
LABEL_11:
  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *v6++;
      v8 ^= sirinluexternal::UsoGraph::hash_value(v9);
    }

    while (v6 != v7);
  }

  return v8 ^ v5;
}

uint64_t sirinluexternal::SystemInformed::makeTaskId(uint64_t this)
{
  if (!*(this + 32))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALMentionResolverSpanDataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        *(a1 + 24) |= 1u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___SIRINLUINTERNALMentionResolverSpanData__jointScore;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 2u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___SIRINLUINTERNALMentionResolverSpanData__modelScore;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALResponseStatusReadFrom(uint64_t a1, void *a2)
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
        v24 = 0;
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
        break;
      }

      if ((v12 >> 3) == 3)
      {
        v20 = PBReaderReadString();
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::formatText(sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "contextual_spans");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v2 = *(this + 8);
  for (i = *(this + 16); v2 != i; this = PB::Writer::writeSubmessage(a2, v5))
  {
    v5 = *v2++;
  }

  return this;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::readFrom(sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>();
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

void sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::~ContextualSpanMatcherResponse(sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse *this)
{
  *this = &unk_1F48791D8;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);
  PB::Base::~Base(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48791D8;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

{
  *this = &unk_1F48791D8;
  v2 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v2);

  PB::Base::~Base(this);
}

void *sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::ContextualSpanMatcherResponse(void *this)
{
  *this = &unk_1F48791D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_1F48791D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::ContextualSpanMatcherResponse(void *this, const sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse *a2)
{
  this[1] = 0;
  *this = &unk_1F48791D8;
  this[2] = 0;
  this[3] = 0;
  v2 = *(a2 + 1);
  if (v2 != *(a2 + 2))
  {
    v3 = *v2;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  return this;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::operator=(uint64_t a1, const sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse *a2)
{
  if (a1 != a2)
  {
    sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::ContextualSpanMatcherResponse(&v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v7;
    v7 = v3;
    v4 = *(a1 + 24);
    *(a1 + 24) = v8;
    v8 = v4;
    v6 = &unk_1F48791D8;
    v9 = &v7;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v9);
    PB::Base::~Base(&v6);
  }

  return a1;
}

void *sirinluinternalcontextual_span_matcher::swap(void *this, sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse *a2, sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse *a3)
{
  v3 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v3;
  v4 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v4;
  v5 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v5;
  return this;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::ContextualSpanMatcherResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48791D8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

{
  *a1 = &unk_1F48791D8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 8));
  *v4 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v9 = &unk_1F48791D8;
    v10 = 0uLL;
    v11 = 0;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(&v10);
    v4 = *(a2 + 24);
    v5 = *(a2 + 8);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v6 = *(a1 + 8);
    *(a1 + 8) = v5;
    v10 = v6;
    v7 = *(a1 + 24);
    *(a1 + 24) = v4;
    v11 = v7;
    v12 = &v10;
    v9 = &unk_1F48791D8;
    std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v12);
    PB::Base::~Base(&v9);
  }

  return a1;
}

uint64_t sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse::hash_value(sirinluinternalcontextual_span_matcher::ContextualSpanMatcherResponse *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1++;
    v3 ^= sirinluinternal::MatchingSpan::hash_value(v4);
  }

  while (v1 != v2);
  return v3;
}

uint64_t SIRINLUEXTERNALReferenceContextReadFrom(uint64_t a1, void *a2)
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
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___SIRINLUEXTERNALReferenceContext__contextualReference;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___SIRINLUEXTERNALReferenceContext__contextualReference;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___SIRINLUEXTERNALReferenceContext__disambiguationNeeded;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___SIRINLUEXTERNALReferenceContext__disambiguationNeeded;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALSSU_INFERENCESsuInferenceRequestReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRINLUEXTERNALRequestID);
        objc_storeStrong((a1 + 8), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !SIRINLUEXTERNALRequestIDReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
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

    v14 = PBReaderReadString();
    v13 = *(a1 + 16);
    *(a1 + 16) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUEXTERNALRRAnnotationReadFrom(uint64_t a1, void *a2)
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
        v13 = objc_alloc_init(SIRICOMMONStringValue);
        v14 = 16;
      }

      else
      {
        if ((v12 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v13 = objc_alloc_init(SIRICOMMONStringValue);
        v14 = 8;
      }

      objc_storeStrong((a1 + v14), v13);
      v17[0] = 0;
      v17[1] = 0;
      if (!PBReaderPlaceMark() || !SIRICOMMONStringValueReadFrom(v13, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v15 = [a2 position];
    }

    while (v15 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALEMBEDDINGEmbeddingTensorOutputReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v30 = PBReaderReadString();
          v31 = *(a1 + 24);
          *(a1 + 24) = v30;

          goto LABEL_55;
        }

        if (v13 != 2)
        {
          goto LABEL_47;
        }

        v21 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
        v22 = 16;
      }

      else
      {
        if (v13 != 3)
        {
          if (v13 == 4)
          {
            v23 = 0;
            v24 = 0;
            v25 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v34[0]) = 0;
              v26 = [a2 position] + 1;
              if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
              {
                v28 = [a2 data];
                [v28 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v25 |= (v34[0] & 0x7F) << v23;
              if ((v34[0] & 0x80) == 0)
              {
                break;
              }

              v23 += 7;
              v11 = v24++ >= 9;
              if (v11)
              {
                v29 = 0;
                goto LABEL_52;
              }
            }

            if ([a2 hasError])
            {
              v29 = 0;
            }

            else
            {
              v29 = v25;
            }

LABEL_52:
            *(a1 + 8) = v29;
            goto LABEL_55;
          }

          if (v13 == 5)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v34[0]) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v34[0] & 0x7F) << v14;
              if ((v34[0] & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_54;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_54:
            *(a1 + 40) = v20;
            goto LABEL_55;
          }

LABEL_47:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_55;
        }

        v21 = objc_alloc_init(SIRINLUINTERNALNLv4EmbeddingTensor);
        v22 = 32;
      }

      objc_storeStrong((a1 + v22), v21);
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !SIRINLUINTERNALNLv4EmbeddingTensorReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sirinluinternal::UtteranceRule::formatText(sirinluinternal::UtteranceRule *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "compare_options");
  }

  if (*(this + 2))
  {
    PB::TextFormatter::format();
  }

  v6 = *(this + 3);
  v7 = *(this + 4);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, a2, "spans_for_named_capture_groups");
  }

  if (*(this + 52))
  {
    v9 = *(this + 12);
    PB::TextFormatter::format(a2, "type");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::UtteranceRule::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  if (*(this + 16))
  {
    this = PB::Writer::write();
  }

  if (*(v3 + 52))
  {
    v4 = *(v3 + 48);
    this = PB::Writer::writeVarInt(a2);
  }

  v5 = *(v3 + 8);
  if (v5)
  {
    this = PB::Writer::writeSubmessage(a2, v5);
  }

  v7 = *(v3 + 24);
  v6 = *(v3 + 32);
  while (v7 != v6)
  {
    v8 = *v7++;
    this = PB::Writer::writeSubmessage(a2, v8);
  }

  return this;
}

uint64_t sirinluinternal::UtteranceRule::readFrom(sirinluinternal::UtteranceRule *this, PB::Reader *a2)
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
    if ((v10 >> 3) > 2)
    {
      if (v22 == 3)
      {
        operator new();
      }

      if (v22 == 4)
      {
        operator new();
      }
    }

    else
    {
      if (v22 == 1)
      {
        operator new();
      }

      if (v22 == 2)
      {
        *(this + 52) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v34 = (v25 + v24);
          v18 = v23 >= v24;
          v35 = v23 - v24;
          if (!v18)
          {
            v35 = 0;
          }

          v36 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v37 = *v34;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_42:
              LODWORD(v28) = 0;
              goto LABEL_46;
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
              goto LABEL_42;
            }
          }
        }

LABEL_46:
        *(this + 12) = v28;
        goto LABEL_47;
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v39 = 0;
      return v39 & 1;
    }

LABEL_47:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void sirinluinternal::UtteranceRule::~UtteranceRule(sirinluinternal::UtteranceRule *this)
{
  sirinluinternal::UtteranceRule::~UtteranceRule(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4879228;
  v2 = (this + 24);
  if (*(this + 3))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 3);
    operator delete(*v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  PB::Base::~Base(this);
}

double sirinluinternal::UtteranceRule::UtteranceRule(sirinluinternal::UtteranceRule *this)
{
  *this = &unk_1F4879228;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = &unk_1F4879228;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t sirinluinternal::UtteranceRule::UtteranceRule(uint64_t this, const sirinluinternal::UtteranceRule *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F4879228;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  if (*(a2 + 2))
  {
    operator new();
  }

  if (*(a2 + 52))
  {
    v2 = *(a2 + 12);
    *(this + 52) |= 1u;
    *(this + 48) = v2;
  }

  if (*(a2 + 1))
  {
    operator new();
  }

  v3 = *(a2 + 3);
  if (v3 != *(a2 + 4))
  {
    v4 = *v3;
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::UtteranceRule::operator=(uint64_t a1, const sirinluinternal::UtteranceRule *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::UtteranceRule::UtteranceRule(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v3;
    v4 = v11;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    v11 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluinternal::UtteranceRule::~UtteranceRule(v9);
  }

  return a1;
}

uint64_t sirinluinternal::swap(uint64_t this, sirinluinternal::UtteranceRule *a2, sirinluinternal::UtteranceRule *a3)
{
  v3 = *(this + 52);
  *(this + 52) = *(a2 + 13);
  *(a2 + 13) = v3;
  v4 = *(this + 16);
  *(this + 16) = *(a2 + 2);
  *(a2 + 2) = v4;
  LODWORD(v4) = *(this + 48);
  *(this + 48) = *(a2 + 12);
  *(a2 + 12) = v4;
  v5 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v5;
  v6 = *(this + 24);
  *(this + 24) = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 32);
  *(this + 32) = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = *(this + 40);
  *(this + 40) = *(a2 + 5);
  *(a2 + 5) = v8;
  return this;
}

uint64_t sirinluinternal::UtteranceRule::UtteranceRule(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4879228;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 52) = *(a2 + 52);
  *(a2 + 52) = 0;
  v4 = *(a2 + 16);
  *(a2 + 16) = 0;
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
  }

  *(a1 + 48) = *(a2 + 48);
  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = (a1 + 24);
  if (*(a1 + 24))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 24));
    operator delete(*v8);
    *v8 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return a1;
}

uint64_t sirinluinternal::UtteranceRule::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::UtteranceRule::UtteranceRule(v9, a2);
    v3 = *(a1 + 48);
    *(a1 + 48) = v13;
    v13 = v3;
    v4 = v11;
    v5 = *(a1 + 8);
    *(a1 + 8) = v10;
    v6 = *(a1 + 24);
    *(a1 + 24) = v4;
    v10 = v5;
    v11 = v6;
    v7 = *(a1 + 40);
    *(a1 + 40) = v12;
    v12 = v7;
    sirinluinternal::UtteranceRule::~UtteranceRule(v9);
  }

  return a1;
}

BOOL sirinluinternal::UtteranceRule::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
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
  }

  else if (v5)
  {
    return 0;
  }

  v13 = *(a2 + 52);
  if (*(a1 + 52))
  {
    if ((*(a2 + 52) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
    {
      return 0;
    }
  }

  else if (*(a2 + 52))
  {
    return 0;
  }

  v14 = *(a1 + 8);
  v15 = *(a2 + 8);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v15 || !sirinluinternal::CompareOptions::operator==(v14, v15))
  {
    return 0;
  }

LABEL_29:
  v18 = a1 + 24;
  v16 = *(a1 + 24);
  v17 = *(v18 + 8);
  v20 = a2 + 24;
  v19 = *(a2 + 24);
  if (v17 - v16 != *(v20 + 8) - v19)
  {
    return 0;
  }

  if (v16 == v17)
  {
    return 1;
  }

  do
  {
    v22 = *v16++;
    v21 = v22;
    v23 = *v19++;
    result = sirinluinternal::AdjacentSpans::operator==(v21, v23);
  }

  while (result && v16 != v17);
  return result;
}

unint64_t sirinluinternal::UtteranceRule::hash_value(sirinluinternal::UtteranceRule *this)
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

  if (*(this + 52))
  {
    v4 = *(this + 12);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 1);
  if (!v5)
  {
    v9 = 0;
    goto LABEL_17;
  }

  if ((v5[12] & 1) == 0)
  {
    v6 = 0;
    if ((v5[12] & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v7 = 0;
    if ((v5[12] & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v6 = v5[8];
  if ((v5[12] & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v7 = v5[9];
  if ((v5[12] & 4) == 0)
  {
    goto LABEL_15;
  }

LABEL_11:
  v8 = v5[10];
LABEL_16:
  v9 = v7 ^ v6 ^ v8;
LABEL_17:
  v11 = *(this + 3);
  v10 = *(this + 4);
  if (v11 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = *v11++;
      v12 ^= sirinluinternal::AdjacentSpans::hash_value(v13);
    }

    while (v11 != v10);
  }

  return v4 ^ v3 ^ v9 ^ v12;
}

uint64_t sirinluinternal::UtteranceRule::makeCompareOptions(uint64_t this)
{
  if (!*(this + 8))
  {
    operator new();
  }

  return this;
}

uint64_t SIRINLUINTERNALTokenChainReadFrom(char *a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v14 = PBReaderReadString();
        v15 = 8;
LABEL_22:
        v16 = *&a1[v15];
        *&a1[v15] = v14;
LABEL_26:

        goto LABEL_28;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = 16;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v16 = objc_alloc_init(SIRINLUINTERNALToken);
    [a1 addTokens:v16];
    v19[0] = 0;
    v19[1] = 0;
    if (!PBReaderPlaceMark() || !SIRINLUINTERNALTokenReadFrom(v16, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SIRINLUINTERNALSpanDataForNamedCaptureGroupReadFrom(uint64_t a1, void *a2)
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
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
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
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v33 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v33 & 0x7F) << v23;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v25;
        }

LABEL_48:
        v30 = 20;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            v15 = *(a1 + 8);
            *(a1 + 8) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_50;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v34 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34 & 0x7F) << v16;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
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

LABEL_44:
        v30 = 16;
      }

      *(a1 + v30) = v22;
LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C8BD01A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1C8BD0298(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);

  _Unwind_Resume(a1);
}

void sub_1C8BD03D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1C8BD04D8(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);

  _Unwind_Resume(a1);
}

void sub_1C8BD05D4(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);

  _Unwind_Resume(a1);
}

void sub_1C8BD06C8(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);

  _Unwind_Resume(a1);
}

void sub_1C8BD07BC(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);

  _Unwind_Resume(a1);
}

void sub_1C8BD08FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1C8BD09F0(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);

  _Unwind_Resume(a1);
}

void sub_1C8BD0B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1C8BD0C68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1C8BD0D58(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);

  _Unwind_Resume(a1);
}

uint64_t SIRICOMMONStringValueReadFrom(uint64_t a1, void *a2)
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

uint64_t sirinluexternal::UsoGraph::formatText(sirinluexternal::UsoGraph *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "alignments");
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "edges");
  }

  v11 = *(this + 7);
  v12 = *(this + 8);
  while (v11 != v12)
  {
    v13 = *v11++;
    (*(*v13 + 32))(v13, a2, "identifiers");
  }

  v14 = *(this + 10);
  v15 = *(this + 11);
  while (v14 != v15)
  {
    v16 = *v14++;
    (*(*v16 + 32))(v16, a2, "nodes");
  }

  v17 = *(this + 13);
  v18 = *(this + 14);
  while (v17 != v18)
  {
    v19 = *v17++;
    (*(*v19 + 32))(v19, a2, "spans");
  }

  v20 = *(this + 16);
  if (v20)
  {
    (*(*v20 + 32))(v20, a2, "version");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluexternal::UsoGraph::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 128);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[10];
  v6 = v3[11];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v8 = v3[4];
  v9 = v3[5];
  while (v8 != v9)
  {
    v10 = *v8++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  v11 = v3[7];
  v12 = v3[8];
  while (v11 != v12)
  {
    v13 = *v11++;
    this = PB::Writer::writeSubmessage(a2, v13);
  }

  v14 = v3[1];
  v15 = v3[2];
  while (v14 != v15)
  {
    v16 = *v14++;
    this = PB::Writer::writeSubmessage(a2, v16);
  }

  v18 = v3[13];
  v17 = v3[14];
  while (v18 != v17)
  {
    v19 = *v18++;
    this = PB::Writer::writeSubmessage(a2, v19);
  }

  return this;
}

uint64_t sirinluexternal::UsoGraph::readFrom(sirinluexternal::UsoGraph *this, PB::Reader *a2)
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
        goto LABEL_37;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) > 3)
      {
        switch(v21)
        {
          case 4:
            operator new();
          case 5:
            operator new();
          case 6:
            operator new();
        }
      }

      else
      {
        switch(v21)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
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
        goto LABEL_37;
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

LABEL_37:
  v23 = v4 ^ 1;
  return v23 & 1;
}

void sirinluexternal::UsoGraph::~UsoGraph(sirinluexternal::UsoGraph *this)
{
  sirinluexternal::UsoGraph::~UsoGraph(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4879278;
  v2 = *(this + 16);
  *(this + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 13))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 13);
    operator delete(*(this + 13));
  }

  if (*(this + 10))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 10);
    operator delete(*(this + 10));
  }

  if (*(this + 7))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 7);
    operator delete(*(this + 7));
  }

  if (*(this + 4))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 4);
    operator delete(*(this + 4));
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

double sirinluexternal::UsoGraph::UsoGraph(sirinluexternal::UsoGraph *this)
{
  *this = &unk_1F4879278;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

{
  *this = &unk_1F4879278;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  return result;
}

uint64_t sirinluexternal::UsoGraph::UsoGraph(uint64_t this, const sirinluexternal::UsoGraph *a2)
{
  *this = &unk_1F4879278;
  *(this + 8) = 0u;
  *(this + 56) = 0u;
  *(this + 104) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  if (*(a2 + 16))
  {
    operator new();
  }

  v2 = *(a2 + 10);
  if (v2 != *(a2 + 11))
  {
    v3 = *v2;
    operator new();
  }

  v4 = *(a2 + 4);
  if (v4 != *(a2 + 5))
  {
    v5 = *v4;
    operator new();
  }

  v6 = *(a2 + 7);
  if (v6 != *(a2 + 8))
  {
    v7 = *v6;
    operator new();
  }

  v8 = *(a2 + 1);
  if (v8 != *(a2 + 2))
  {
    v9 = *v8;
    operator new();
  }

  v10 = *(a2 + 13);
  if (v10 != *(a2 + 14))
  {
    v11 = *v10;
    operator new();
  }

  return this;
}

const sirinluexternal::UsoGraph *sirinluexternal::UsoGraph::operator=(const sirinluexternal::UsoGraph *a1, const sirinluexternal::UsoGraph *a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoGraph::UsoGraph(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::UsoGraph::~UsoGraph(v5);
  }

  return a1;
}

void *sirinluexternal::swap(void *this, sirinluexternal::UsoGraph *a2, sirinluexternal::UsoGraph *a3)
{
  v3 = this[16];
  this[16] = *(a2 + 16);
  *(a2 + 16) = v3;
  v4 = this[10];
  this[10] = *(a2 + 10);
  *(a2 + 10) = v4;
  v5 = this[11];
  this[11] = *(a2 + 11);
  *(a2 + 11) = v5;
  v6 = this[12];
  this[12] = *(a2 + 12);
  *(a2 + 12) = v6;
  v7 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v7;
  v8 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v8;
  v9 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v9;
  v10 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v10;
  v11 = this[8];
  this[8] = *(a2 + 8);
  *(a2 + 8) = v11;
  v12 = this[9];
  this[9] = *(a2 + 9);
  *(a2 + 9) = v12;
  v13 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v13;
  v14 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v14;
  v15 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v15;
  v16 = this[13];
  this[13] = *(a2 + 13);
  *(a2 + 13) = v16;
  v17 = this[14];
  this[14] = *(a2 + 14);
  *(a2 + 14) = v17;
  v18 = this[15];
  this[15] = *(a2 + 15);
  *(a2 + 15) = v18;
  return this;
}

uint64_t sirinluexternal::UsoGraph::UsoGraph(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *a1 = &unk_1F4879278;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v5 = *(a2 + 128);
  *(a2 + 128) = 0;
  v6 = *(a1 + 128);
  *(a1 + 128) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v7 = (a1 + 80);
    v8 = (a1 + 104);
    v9 = (a1 + 56);
    v10 = (a1 + 32);
    v11 = (a2 + 80);
    if (*(a1 + 80))
    {
      std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 80));
      operator delete(*v7);
      *v7 = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
    }
  }

  else
  {
    v8 = (a1 + 104);
    v9 = (a1 + 56);
    v10 = (a1 + 32);
    v11 = (a2 + 80);
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  if (*(a1 + 32))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v10);
    operator delete(*v10);
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 56))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v9);
    operator delete(*v9);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 8))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 104))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v8);
    operator delete(*v8);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  return a1;
}

void *sirinluexternal::UsoGraph::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluexternal::UsoGraph::UsoGraph(v5, a2);
    sirinluexternal::swap(a1, v5, v3);
    sirinluexternal::UsoGraph::~UsoGraph(v5);
  }

  return a1;
}

BOOL sirinluexternal::UsoGraph::operator==(void *a1, void *a2)
{
  v4 = a1[16];
  v5 = a2[16];
  if (v4)
  {
    if (!v5 || !sirinluexternal::SemVer::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[10];
  v6 = a1[11];
  v8 = a2[10];
  if (v6 - v7 != a2[11] - v8)
  {
    return 0;
  }

  while (v7 != v6)
  {
    result = sirinluexternal::UsoNode::operator==(*v7, *v8);
    if (!result)
    {
      return result;
    }

    ++v7;
    ++v8;
  }

  v11 = a1[4];
  v10 = a1[5];
  v12 = a2[4];
  if (v10 - v11 != a2[5] - v12)
  {
    return 0;
  }

  while (v11 != v10)
  {
    result = sirinluexternal::UsoEdge::operator==(*v11, *v12);
    if (!result)
    {
      return result;
    }

    ++v11;
    ++v12;
  }

  v14 = a1[7];
  v13 = a1[8];
  v15 = a2[7];
  if (v13 - v14 != a2[8] - v15)
  {
    return 0;
  }

  while (v14 != v13)
  {
    result = sirinluexternal::UsoEntityIdentifier::operator==(*v14, *v15);
    if (!result)
    {
      return result;
    }

    ++v14;
    ++v15;
  }

  v17 = a1[1];
  v16 = a1[2];
  v18 = a2[1];
  if (v16 - v17 != a2[2] - v18)
  {
    return 0;
  }

  while (v17 != v16)
  {
    result = sirinluexternal::UtteranceAlignment::operator==(*v17, *v18);
    if (!result)
    {
      return result;
    }

    ++v17;
    ++v18;
  }

  v21 = a1 + 13;
  v19 = a1[13];
  v20 = v21[1];
  v23 = a2 + 13;
  v22 = a2[13];
  if (v20 - v19 != v23[1] - v22)
  {
    return 0;
  }

  if (v19 == v20)
  {
    return 1;
  }

  do
  {
    v25 = *v19++;
    v24 = v25;
    v26 = *v22++;
    result = sirinluexternal::UsoEntitySpan::operator==(v24, v26);
  }

  while (result && v19 != v20);
  return result;
}

uint64_t sirinluexternal::UsoGraph::hash_value(sirinluexternal::UsoGraph *this)
{
  v2 = *(this + 16);
  if (!v2)
  {
    v6 = 0;
    goto LABEL_11;
  }

  if ((*(v2 + 20) & 1) == 0)
  {
    v3 = 0;
    if ((*(v2 + 20) & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_8:
    v4 = 0;
    if ((*(v2 + 20) & 4) != 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = *(v2 + 8);
  if ((*(v2 + 20) & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *(v2 + 12);
  if ((*(v2 + 20) & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = *(v2 + 16);
LABEL_10:
  v6 = v4 ^ v3 ^ v5;
LABEL_11:
  v7 = *(this + 10);
  v8 = *(this + 11);
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    do
    {
      v10 = *v7++;
      v9 ^= sirinluexternal::UsoNode::hash_value(v10);
    }

    while (v7 != v8);
  }

  v11 = *(this + 4);
  v12 = *(this + 5);
  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    do
    {
      v14 = *v11++;
      v13 ^= sirinluexternal::UsoEdge::hash_value(v14);
    }

    while (v11 != v12);
  }

  v15 = *(this + 7);
  v16 = *(this + 8);
  if (v15 == v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 0;
    do
    {
      v18 = *v15++;
      v17 ^= sirinluexternal::UsoEntityIdentifier::hash_value(v18);
    }

    while (v15 != v16);
  }

  v19 = *(this + 1);
  v20 = *(this + 2);
  if (v19 == v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    do
    {
      v22 = *v19++;
      v21 ^= sirinluexternal::UtteranceAlignment::hash_value(v22);
    }

    while (v19 != v20);
  }

  v23 = *(this + 13);
  v24 = *(this + 14);
  if (v23 == v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0;
    do
    {
      v26 = *v23++;
      v25 ^= sirinluexternal::UsoEntitySpan::hash_value(v26);
    }

    while (v23 != v24);
  }

  return v9 ^ v6 ^ v13 ^ v17 ^ v21 ^ v25;
}

uint64_t sirinluexternal::UsoGraph::makeVersion(uint64_t this)
{
  if (!*(this + 128))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternal::TurnInputRule::formatText(sirinluinternal::TurnInputRule *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  v6 = *(this + 2);
  while (v5 != v6)
  {
    v7 = *v5++;
    (*(*v7 + 32))(v7, a2, "negative_context_rules");
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  while (v8 != v9)
  {
    v10 = *v8++;
    (*(*v10 + 32))(v10, a2, "positive_context_rules");
  }

  v11 = *(this + 7);
  if (v11)
  {
    (*(*v11 + 32))(v11, a2, "utterance_rule");
  }

  return MEMORY[0x1EEE30A90](a2);
}

uint64_t sirinluinternal::TurnInputRule::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 56);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = v3[4];
  v6 = v3[5];
  while (v5 != v6)
  {
    v7 = *v5++;
    this = PB::Writer::writeSubmessage(a2, v7);
  }

  v9 = v3[1];
  v8 = v3[2];
  while (v9 != v8)
  {
    v10 = *v9++;
    this = PB::Writer::writeSubmessage(a2, v10);
  }

  return this;
}

uint64_t sirinluinternal::TurnInputRule::readFrom(sirinluinternal::TurnInputRule *this, PB::Reader *a2)
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
        PB::PtrVector<sirinluinternal::ContextRule>::emplace_back<>();
      }

      if (v21 == 2)
      {
        PB::PtrVector<sirinluinternal::ContextRule>::emplace_back<>();
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

void sirinluinternal::TurnInputRule::~TurnInputRule(sirinluinternal::TurnInputRule *this)
{
  sirinluinternal::TurnInputRule::~TurnInputRule(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F48792C8;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = (this + 32);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 8);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v3);

  PB::Base::~Base(this);
}

double sirinluinternal::TurnInputRule::TurnInputRule(sirinluinternal::TurnInputRule *this)
{
  *this = &unk_1F48792C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_1F48792C8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  return result;
}

uint64_t sirinluinternal::TurnInputRule::TurnInputRule(uint64_t this, const sirinluinternal::TurnInputRule *a2)
{
  *this = &unk_1F48792C8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0;
  if (*(a2 + 7))
  {
    operator new();
  }

  v2 = *(a2 + 4);
  if (v2 != *(a2 + 5))
  {
    v3 = *v2;
    PB::PtrVector<sirinluinternal::ContextRule>::emplace_back<sirinluinternal::ContextRule const&>();
  }

  v4 = *(a2 + 1);
  if (v4 != *(a2 + 2))
  {
    v5 = *v4;
    PB::PtrVector<sirinluinternal::ContextRule>::emplace_back<sirinluinternal::ContextRule const&>();
  }

  return this;
}

uint64_t sirinluinternal::TurnInputRule::operator=(uint64_t a1, const sirinluinternal::TurnInputRule *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::TurnInputRule::TurnInputRule(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    sirinluinternal::TurnInputRule::~TurnInputRule(&v8);
  }

  return a1;
}

void *sirinluinternal::swap(void *this, sirinluinternal::TurnInputRule *a2, sirinluinternal::TurnInputRule *a3)
{
  v3 = this[7];
  this[7] = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = this[4];
  this[4] = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = this[5];
  this[5] = *(a2 + 5);
  *(a2 + 5) = v5;
  v6 = this[6];
  this[6] = *(a2 + 6);
  *(a2 + 6) = v6;
  v7 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v7;
  v8 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v8;
  v9 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v9;
  return this;
}

uint64_t sirinluinternal::TurnInputRule::TurnInputRule(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F48792C8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  v5 = *(a2 + 56);
  *(a2 + 56) = 0;
  v6 = *(a1 + 56);
  *(a1 + 56) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate((a1 + 32));
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__vdeallocate(v4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t sirinluinternal::TurnInputRule::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::TurnInputRule::TurnInputRule(&v8, a2);
    v3 = *(a1 + 56);
    *(a1 + 56) = v12;
    v12 = v3;
    v4 = *(a1 + 40);
    *(a1 + 40) = v11;
    v11 = v4;
    v5 = *(a1 + 8);
    *(a1 + 8) = v9;
    v9 = v5;
    v6 = *(a1 + 24);
    *(a1 + 24) = v10;
    v10 = v6;
    sirinluinternal::TurnInputRule::~TurnInputRule(&v8);
  }

  return a1;
}

BOOL sirinluinternal::TurnInputRule::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a2 + 56);
  if (v4)
  {
    if (!v5 || !sirinluinternal::UtteranceRule::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (!PB::PtrVector<sirinluinternal::ContextRule>::operator==((a1 + 32), *(a2 + 32), *(a2 + 40)))
  {
    return 0;
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);

  return PB::PtrVector<sirinluinternal::ContextRule>::operator==((a1 + 8), v6, v7);
}

BOOL PB::PtrVector<sirinluinternal::ContextRule>::operator==(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v3 = a1[1];
  if (v3 - *a1 != a3 - a2)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  v5 = a2;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v8 = *v5++;
    result = sirinluinternal::ContextRule::operator==(v6, v8);
  }

  while (result && v4 != v3);
  return result;
}

unint64_t sirinluinternal::TurnInputRule::hash_value(sirinluinternal::TurnInputRule *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = sirinluinternal::UtteranceRule::hash_value(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 ^= sirinluinternal::ContextRule::hash_value(v7);
    }

    while (v4 != v5);
  }

  v9 = *(this + 1);
  v8 = *(this + 2);
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = *v9++;
      v10 ^= sirinluinternal::ContextRule::hash_value(v11);
    }

    while (v9 != v8);
  }

  return v6 ^ v3 ^ v10;
}

uint64_t sirinluinternal::TurnInputRule::makeUtteranceRule(uint64_t this)
{
  if (!*(this + 56))
  {
    operator new();
  }

  return this;
}

uint64_t PB::TextFormatter::format()
{
  return MEMORY[0x1EEE30A48]();
}

{
  return MEMORY[0x1EEE30A50]();
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x1EEE30A58](this, a2);
}

{
  return MEMORY[0x1EEE30A70](this, a2);
}

{
  return MEMORY[0x1EEE30A78](this, a2);
}

{
  return MEMORY[0x1EEE30A80](this, a2);
}

{
  return MEMORY[0x1EEE30A88](this, a2);
}

uint64_t PB::Reader::read()
{
  return MEMORY[0x1EEE30AC0]();
}

{
  return MEMORY[0x1EEE30AC8]();
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x1EEE30B08](this);
}

{
  return MEMORY[0x1EEE30B10](this);
}

{
  return MEMORY[0x1EEE30B18](this);
}

{
  return MEMORY[0x1EEE30B20](this);
}

uint64_t PB::Writer::write()
{
  return MEMORY[0x1EEE30B30]();
}

{
  return MEMORY[0x1EEE30B38]();
}

uint64_t siri::ontology::UsoGraph::UsoGraph()
{
  return MEMORY[0x1EEE3F3A8]();
}

{
  return MEMORY[0x1EEE3F3B0]();
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