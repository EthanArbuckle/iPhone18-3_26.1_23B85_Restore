void std::pair<nlv4_inference_orchestrator::orchestration::IndexedToken,std::vector<std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>>>>::~pair(uint64_t a1)
{
  v1 = (a1 + 144);
  std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v1);

  JUMPOUT(0x223DC3250);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(const void **a1, const void **a2, const void **a3)
{
  v6 = *(a1 + 23);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  if (v7 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  if (v6 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(v9, v11, v12);
  if (v13)
  {
    v14 = v13 < 0;
  }

  else
  {
    v14 = v8 < v10;
  }

  v15 = *(a3 + 23);
  if (v15 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v15 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v8 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v8;
  }

  result = memcmp(v17, v9, v18);
  v20 = v16 < v8;
  if (result)
  {
    v20 = result < 0;
  }

  if (v14)
  {
    if (v20)
    {
      v21 = (a1 + 3);
      v22 = a1[2];
      v23 = *a1;
      v24 = a3[2];
      *a1 = *a3;
      a1[2] = v24;
LABEL_72:
      *a3 = v23;
      a3[2] = v22;
      v29 = (a3 + 3);
      goto LABEL_73;
    }

    v41 = a1[2];
    v42 = *a1;
    v43 = a2[2];
    *a1 = *a2;
    a1[2] = v43;
    *a2 = v42;
    a2[2] = v41;
    v21 = (a2 + 3);
    v44 = a1[3];
    a1[3] = a2[3];
    a2[3] = v44;
    v45 = *(a2 + 23);
    v46 = *(a3 + 23);
    if (v46 >= 0)
    {
      v47 = *(a3 + 23);
    }

    else
    {
      v47 = a3[1];
    }

    if (v46 >= 0)
    {
      v48 = a3;
    }

    else
    {
      v48 = *a3;
    }

    if (v45 >= 0)
    {
      v49 = *(a2 + 23);
    }

    else
    {
      v49 = a2[1];
    }

    if (v45 >= 0)
    {
      v50 = a2;
    }

    else
    {
      v50 = *a2;
    }

    if (v49 >= v47)
    {
      v51 = v47;
    }

    else
    {
      v51 = v49;
    }

    result = memcmp(v48, v50, v51);
    v52 = v47 < v49;
    if (result)
    {
      v52 = result < 0;
    }

    if (v52)
    {
      v22 = a2[2];
      v23 = *a2;
      v53 = a3[2];
      *a2 = *a3;
      a2[2] = v53;
      goto LABEL_72;
    }
  }

  else if (v20)
  {
    v25 = a2[2];
    v26 = *a2;
    v27 = a3[2];
    *a2 = *a3;
    a2[2] = v27;
    *a3 = v26;
    a3[2] = v25;
    v29 = (a2 + 3);
    v28 = a2[3];
    a2[3] = a3[3];
    a3[3] = v28;
    v30 = *(a1 + 23);
    v31 = *(a2 + 23);
    if (v31 >= 0)
    {
      v32 = *(a2 + 23);
    }

    else
    {
      v32 = a2[1];
    }

    if (v31 >= 0)
    {
      v33 = a2;
    }

    else
    {
      v33 = *a2;
    }

    if (v30 >= 0)
    {
      v34 = *(a1 + 23);
    }

    else
    {
      v34 = a1[1];
    }

    if (v30 >= 0)
    {
      v35 = a1;
    }

    else
    {
      v35 = *a1;
    }

    if (v34 >= v32)
    {
      v36 = v32;
    }

    else
    {
      v36 = v34;
    }

    result = memcmp(v33, v35, v36);
    v37 = v32 < v34;
    if (result)
    {
      v37 = result < 0;
    }

    if (v37)
    {
      v38 = a1[2];
      v39 = *a1;
      v40 = a2[2];
      *a1 = *a2;
      a1[2] = v40;
      *a2 = v39;
      a2[2] = v38;
      v21 = (a1 + 3);
LABEL_73:
      v54 = *v21;
      *v21 = *v29;
      *v29 = v54;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(uint64_t a1, __int128 *a2, __int128 *a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(a1, a2, a3);
  v8 = *(a3 + 23);
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  if (v9 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 1);
  }

  if (v8 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v17 = v10 < v12;
  if (v15)
  {
    v17 = v15 < 0;
  }

  if (v17)
  {
    v18 = *(a3 + 2);
    v19 = *a3;
    v20 = a4[2];
    *a3 = *a4;
    *(a3 + 2) = v20;
    *a4 = v19;
    a4[2] = v18;
    v21 = *(a3 + 3);
    *(a3 + 3) = a4[3];
    a4[3] = v21;
    v22 = *(a2 + 23);
    v23 = *(a3 + 23);
    if (v23 >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = *(a3 + 1);
    }

    if (v23 >= 0)
    {
      v25 = a3;
    }

    else
    {
      v25 = *a3;
    }

    if (v22 >= 0)
    {
      v26 = *(a2 + 23);
    }

    else
    {
      v26 = *(a2 + 1);
    }

    if (v22 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if (v26 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v26;
    }

    v29 = memcmp(v25, v27, v28);
    v30 = v24 < v26;
    if (v29)
    {
      v30 = v29 < 0;
    }

    if (v30)
    {
      v31 = *(a2 + 2);
      v32 = *a2;
      v33 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v33;
      *a3 = v32;
      *(a3 + 2) = v31;
      v34 = *(a2 + 3);
      *(a2 + 3) = *(a3 + 3);
      *(a3 + 3) = v34;
      v35 = *(a1 + 23);
      v36 = *(a2 + 23);
      if (v36 >= 0)
      {
        v37 = *(a2 + 23);
      }

      else
      {
        v37 = *(a2 + 1);
      }

      if (v36 >= 0)
      {
        v38 = a2;
      }

      else
      {
        v38 = *a2;
      }

      if (v35 >= 0)
      {
        v39 = *(a1 + 23);
      }

      else
      {
        v39 = *(a1 + 8);
      }

      if (v35 >= 0)
      {
        v40 = a1;
      }

      else
      {
        v40 = *a1;
      }

      if (v39 >= v37)
      {
        v41 = v37;
      }

      else
      {
        v41 = v39;
      }

      v42 = memcmp(v38, v40, v41);
      v43 = v37 < v39;
      if (v42)
      {
        v43 = v42 < 0;
      }

      if (v43)
      {
        v44 = *(a1 + 16);
        result = *a1;
        v45 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 16) = v45;
        *a2 = result;
        *(a2 + 2) = v44;
        v46 = *(a1 + 24);
        *(a1 + 24) = *(a2 + 3);
        *(a2 + 3) = v46;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(a1, a2, a3, a4);
  v10 = *(a4 + 23);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a4 + 23);
  }

  else
  {
    v14 = *(a4 + 1);
  }

  if (v10 >= 0)
  {
    v15 = a4;
  }

  else
  {
    v15 = *a4;
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v19 = v12 < v14;
  if (v17)
  {
    v19 = v17 < 0;
  }

  if (v19)
  {
    v20 = *(a4 + 2);
    v21 = *a4;
    v22 = a5[2];
    *a4 = *a5;
    *(a4 + 2) = v22;
    *a5 = v21;
    a5[2] = v20;
    v23 = *(a4 + 3);
    *(a4 + 3) = a5[3];
    a5[3] = v23;
    v24 = *(a3 + 23);
    v25 = *(a4 + 23);
    if (v25 >= 0)
    {
      v26 = *(a4 + 23);
    }

    else
    {
      v26 = *(a4 + 1);
    }

    if (v25 >= 0)
    {
      v27 = a4;
    }

    else
    {
      v27 = *a4;
    }

    if (v24 >= 0)
    {
      v28 = *(a3 + 23);
    }

    else
    {
      v28 = *(a3 + 8);
    }

    if (v24 >= 0)
    {
      v29 = a3;
    }

    else
    {
      v29 = *a3;
    }

    if (v28 >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    v31 = memcmp(v27, v29, v30);
    v32 = v26 < v28;
    if (v31)
    {
      v32 = v31 < 0;
    }

    if (v32)
    {
      v33 = *(a3 + 16);
      v34 = *a3;
      v35 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 16) = v35;
      *a4 = v34;
      *(a4 + 2) = v33;
      v36 = *(a3 + 24);
      *(a3 + 24) = *(a4 + 3);
      *(a4 + 3) = v36;
      v37 = *(a2 + 23);
      v38 = *(a3 + 23);
      if (v38 >= 0)
      {
        v39 = *(a3 + 23);
      }

      else
      {
        v39 = *(a3 + 8);
      }

      if (v38 >= 0)
      {
        v40 = a3;
      }

      else
      {
        v40 = *a3;
      }

      if (v37 >= 0)
      {
        v41 = *(a2 + 23);
      }

      else
      {
        v41 = *(a2 + 8);
      }

      if (v37 >= 0)
      {
        v42 = a2;
      }

      else
      {
        v42 = *a2;
      }

      if (v41 >= v39)
      {
        v43 = v39;
      }

      else
      {
        v43 = v41;
      }

      v44 = memcmp(v40, v42, v43);
      v45 = v39 < v41;
      if (v44)
      {
        v45 = v44 < 0;
      }

      if (v45)
      {
        v46 = *(a2 + 16);
        v47 = *a2;
        v48 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v48;
        *a3 = v47;
        *(a3 + 16) = v46;
        v49 = *(a2 + 24);
        *(a2 + 24) = *(a3 + 24);
        *(a3 + 24) = v49;
        v50 = *(a1 + 23);
        v51 = *(a2 + 23);
        if (v51 >= 0)
        {
          v52 = *(a2 + 23);
        }

        else
        {
          v52 = *(a2 + 8);
        }

        if (v51 >= 0)
        {
          v53 = a2;
        }

        else
        {
          v53 = *a2;
        }

        if (v50 >= 0)
        {
          v54 = *(a1 + 23);
        }

        else
        {
          v54 = *(a1 + 8);
        }

        if (v50 >= 0)
        {
          v55 = a1;
        }

        else
        {
          v55 = *a1;
        }

        if (v54 >= v52)
        {
          v56 = v52;
        }

        else
        {
          v56 = v54;
        }

        v57 = memcmp(v53, v55, v56);
        v58 = v52 < v54;
        if (v57)
        {
          v58 = v57 < 0;
        }

        if (v58)
        {
          v59 = *(a1 + 16);
          result = *a1;
          v60 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v60;
          *a2 = result;
          *(a2 + 16) = v59;
          v61 = *(a1 + 24);
          *(a1 + 24) = *(a2 + 24);
          *(a2 + 24) = v61;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *>(uint64_t a1, const void **a2)
{
  v4 = (a2 - a1) >> 5;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v6 = a2 - 4;
        v5 = *(a2 - 4);
        v7 = *(a1 + 23);
        v8 = *(a2 - 9);
        if (v8 >= 0)
        {
          v9 = *(a2 - 9);
        }

        else
        {
          v9 = *(a2 - 3);
        }

        if (v8 >= 0)
        {
          v10 = a2 - 4;
        }

        else
        {
          v10 = *(a2 - 4);
        }

        if (v7 >= 0)
        {
          v11 = *(a1 + 23);
        }

        else
        {
          v11 = *(a1 + 8);
        }

        if (v7 >= 0)
        {
          v12 = a1;
        }

        else
        {
          v12 = *a1;
        }

        if (v11 >= v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v11;
        }

        v14 = memcmp(v10, v12, v13);
        v15 = v9 < v11;
        if (v14)
        {
          v15 = v14 < 0;
        }

        if (v15)
        {
          v16 = *(a1 + 16);
          v17 = *a1;
          v18 = *(a2 - 2);
          *a1 = *v6;
          *(a1 + 16) = v18;
          *v6 = v17;
          *(a2 - 2) = v16;
          v19 = *(a1 + 24);
          *(a1 + 24) = *(a2 - 1);
          *(a2 - 1) = v19;
        }

        return 1;
      }

      goto LABEL_28;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(a1, (a1 + 32), a2 - 4);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(a1, (a1 + 32), (a1 + 64), a2 - 4);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(a1, a1 + 32, a1 + 64, (a1 + 96), a2 - 4);
      return 1;
  }

LABEL_28:
  v20 = (a1 + 64);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,nlv4_inference_orchestrator::span_matching::SpanEncoder::attachUniqueLabelsToTokens(nlv4_inference_orchestrator::span_matching::TagBucketList const&,std::vector<nlv4_inference_orchestrator::orchestration::IndexedToken> const&)::$_0 &,std::pair<std::string,std::reference_wrapper<sirinluinternal::MatchingSpan const>> *,0>(a1, (a1 + 32), (a1 + 64));
  v21 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = *(v20 + 23);
    v25 = *(v21 + 23);
    if (v25 >= 0)
    {
      v26 = *(v21 + 23);
    }

    else
    {
      v26 = v21[1];
    }

    if (v25 >= 0)
    {
      v27 = v21;
    }

    else
    {
      v27 = *v21;
    }

    if (v24 >= 0)
    {
      v28 = *(v20 + 23);
    }

    else
    {
      v28 = v20[1];
    }

    if (v24 >= 0)
    {
      v29 = v20;
    }

    else
    {
      v29 = *v20;
    }

    if (v28 >= v26)
    {
      v30 = v26;
    }

    else
    {
      v30 = v28;
    }

    v31 = memcmp(v27, v29, v30);
    v32 = v26 < v28;
    if (v31)
    {
      v32 = v31 < 0;
    }

    if (v32)
    {
      v50 = *v21;
      v33 = v21[2];
      v34 = v21[3];
      v21[1] = 0;
      v21[2] = 0;
      *v21 = 0;
      v51 = v33;
      v52 = v34;
      v35 = v22;
      while (1)
      {
        v36 = a1 + v35;
        if (*(a1 + v35 + 119) < 0)
        {
          operator delete(*(v36 + 96));
        }

        *(v36 + 96) = *(v36 + 64);
        v37 = *(v36 + 80);
        v38 = *(v36 + 88);
        *(v36 + 87) = 0;
        *(v36 + 64) = 0;
        *(v36 + 112) = v37;
        *(v36 + 120) = v38;
        if (v35 == -64)
        {
          break;
        }

        v39 = *(a1 + v35 + 55);
        if (SHIBYTE(v51) >= 0)
        {
          v40 = HIBYTE(v51);
        }

        else
        {
          v40 = *(&v50 + 1);
        }

        if (SHIBYTE(v51) >= 0)
        {
          v41 = &v50;
        }

        else
        {
          v41 = v50;
        }

        if (v39 >= 0)
        {
          v42 = *(a1 + v35 + 55);
        }

        else
        {
          v42 = *(a1 + v35 + 40);
        }

        if (v39 >= 0)
        {
          v43 = (a1 + v35 + 32);
        }

        else
        {
          v43 = *(a1 + v35 + 32);
        }

        if (v42 >= v40)
        {
          v44 = v40;
        }

        else
        {
          v44 = v42;
        }

        v45 = memcmp(v41, v43, v44);
        v46 = v40 < v42;
        if (v45)
        {
          v46 = v45 < 0;
        }

        v35 -= 32;
        if (!v46)
        {
          v47 = a1 + v35 + 96;
          goto LABEL_72;
        }
      }

      v47 = a1;
LABEL_72:
      if (*(v47 + 23) < 0)
      {
        operator delete(*v47);
      }

      *v47 = v50;
      v48 = v52;
      *(v47 + 16) = v51;
      *(v47 + 24) = v48;
      if (++v23 == 8)
      {
        return v21 + 4 == a2;
      }
    }

    v20 = v21;
    v22 += 32;
    v21 += 4;
    if (v21 == a2)
    {
      return 1;
    }
  }
}

uint64_t *nlv4_inference_orchestrator::span_matching::SpanEncoder::getTopLevelUsoEntityFromDataDetectorSpan@<X0>(uint64_t *this@<X0>, const sirinluinternal::MatchingSpan *a2@<X1>, std::string *a3@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if (v4 == v5)
  {
    goto LABEL_11;
  }

  while (*v4)
  {
    if (++v4 == v5)
    {
      goto LABEL_11;
    }
  }

  v6 = *(a2 + 8);
  if (!v6 || *(v6 + 11) - *(v6 + 10) <= 8uLL)
  {
LABEL_11:
    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    v7 = siri::ontology::UsoGraphProtoReader::fromProtobuf(&v18, (this + 3), v6);
    v8 = *(v18 + 88);
    siri::ontology::oname::graph::ontology_init::Argument_entity(v7);
    v9 = *(v8 + 8);
    siri::ontology::UsoGraph::getSuccessors();
    {
      a3->__r_.__value_.__s.__data_[0] = 0;
      a3[1].__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      v12 = v11[3];
      if (*(v12 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *(v12 + 8), *(v12 + 16));
      }

      else
      {
        v13 = *(v12 + 8);
        v19.__r_.__value_.__r.__words[2] = *(v12 + 24);
        *&v19.__r_.__value_.__l.__data_ = v13;
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(a3, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
        v15 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
        a3[1].__r_.__value_.__s.__data_[0] = 1;
        if (v15 < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        *a3 = v19;
        a3[1].__r_.__value_.__s.__data_[0] = 1;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }

    this = std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v18);
  }

  v14 = *MEMORY[0x277D85DE8];
  return this;
}

void nlv4_inference_orchestrator::span_matching::SpanEncoder::getNoSpansLabel(nlv4_inference_orchestrator::span_matching::SpanEncoder *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

uint64_t std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void **a1, const void **a2, char *__s)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  result = std::string::basic_string[abi:ne200100](a1, v6 + v7);
  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a1, v9, v6);
  }

  v10 = a1 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

uint64_t nlohmann::detail::iteration_proxy_value<nlohmann::detail::iter_impl<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>> const>>::~iteration_proxy_value(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  return a1;
}

void psc_inference_orchestrator::orchestration::PSCOverrideGenerator::buildPSCOverrideITFMResponse(itfm_inference_orchestrator::vocabulary::Vocabulary **a1@<X0>, int *a2@<X1>, sirinluinternalitfm::ITFMParserResponse *a3@<X8>)
{
  sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(v10);
  v6 = *a2;
  v14 |= 3u;
  v12 = v6;
  v13 = 1065353216;
  if (*a1)
  {
    itfm_inference_orchestrator::vocabulary::Vocabulary::denumericalizeToken(*a1, v6, &v9);
    sirinluinternalitfm::ITFMHypothesis::makeStringLabel(v10);
    v7 = v11;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    v8 = *&v9.__r_.__value_.__l.__data_;
    *(v7 + 16) = *(&v9.__r_.__value_.__l + 2);
    *v7 = v8;
  }

  sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(a3);
  PB::PtrVector<sirinluinternalitfm::ITFMHypothesis>::emplace_back<sirinluinternalitfm::ITFMHypothesis&>();
}

void sub_22298637C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x223DC32C0](&a16);
  _Unwind_Resume(a1);
}

uint64_t std::pair<std::basic_regex<char,std::regex_traits<char>>,std::string>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = std::locale::locale(a1, a2);
  *&v4[1].__locale_ = *(a2 + 8);
  *&v4[3].__locale_ = *(a2 + 24);
  v5 = *(a2 + 48);
  v4[5].__locale_ = *(a2 + 40);
  v4[6].__locale_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = *(a2 + 56);
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  return a1;
}

void std::pair<std::basic_regex<char,std::regex_traits<char>>,std::string>::~pair(std::locale *this)
{
  if (SHIBYTE(this[10].__locale_) < 0)
  {
    operator delete(this[8].__locale_);
  }

  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

uint64_t std::__split_buffer<std::pair<std::basic_regex<char,std::regex_traits<char>>,std::string>>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 88;
    std::pair<std::basic_regex<char,std::regex_traits<char>>,std::string>::~pair((v3 - 88));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void uaap_orchestration::labels::buildSimpleEntityLabelFromPath(uaap_orchestration::labels *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(__p, L".");
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v5 = *this;
  v6 = *(this + 1);
  if (*this != v6)
  {
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = *this;
    }

    else
    {
      v8 = *v5;
    }

    if (v7 >= 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = *(v5 + 8);
    }

    std::basic_string<char16_t>::append(a2, v8, v9);
    v5 = *this;
    v6 = *(this + 1);
  }

  v10 = v5 + 24;
  if (v6 != v5 + 24)
  {
    do
    {
      if ((v17 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v12 = v17;
      }

      else
      {
        v12 = __p[1];
      }

      std::basic_string<char16_t>::append(a2, v11, v12);
      v13 = *(v10 + 23);
      if (v13 >= 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = *v10;
      }

      if (v13 >= 0)
      {
        v15 = *(v10 + 23);
      }

      else
      {
        v15 = *(v10 + 8);
      }

      std::basic_string<char16_t>::append(a2, v14, v15);
      v10 += 24;
    }

    while (v10 != *(this + 1));
  }

  if (v17 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2229865E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void uaap_orchestration::labels::buildEntityLabelsFromSimpleLabelAndEnumChoices(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  std::basic_string<char16_t>::basic_string[abi:ne200100]<0>(__dst, L":");
  v7 = *a2;
  for (i = a2[1]; v7 != i; v7 += 24)
  {
    if (*(a1 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    if ((v15 & 0x80u) == 0)
    {
      v8 = __dst;
    }

    else
    {
      v8 = __dst[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v9 = v15;
    }

    else
    {
      v9 = __dst[1];
    }

    std::basic_string<char16_t>::append(&__p, v8, v9);
    v10 = *(v7 + 23);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *v7;
    }

    if (v10 >= 0)
    {
      v12 = *(v7 + 23);
    }

    else
    {
      v12 = *(v7 + 8);
    }

    std::basic_string<char16_t>::append(&__p, v11, v12);
    std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v15 < 0)
  {
    operator delete(__dst[0]);
  }
}

void uaap_orchestration::labels::buildEntityLabelsFromPaths(uaap_orchestration::grammar::Path **a1@<X0>, __int128 **a2@<X1>, std::basic_string<char16_t>::__raw *a3@<X8>)
{
  a3->__words[0] = 0;
  a3->__words[1] = 0;
  a3->__words[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      uaap_orchestration::grammar::Path::getLastComponent(v3, v11);
      if (v13)
      {
        uaap_orchestration::labels::buildSimpleEntityLabelFromPath(v3, &__p);
        uaap_orchestration::grammar::UaapGrammar::getEnumChoicesForLabel(a2, v11, v9);
        if (v9[0] == v9[1])
        {
          std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a3, &__p);
        }

        else
        {
          uaap_orchestration::labels::buildEntityLabelsFromSimpleLabelAndEnumChoices(&__p, v9, &v7);
          std::vector<std::basic_string<char16_t>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::basic_string<char16_t> const*>,std::__wrap_iter<std::basic_string<char16_t> const*>>(a3, a3->__words[1], v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
          v14 = &v7;
          std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v14);
        }

        v7 = v9;
        std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v7);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v12 < 0)
        {
          operator delete(v11[0]);
        }
      }

      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }
}

void sub_222986884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  a9 = &a12;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void snlp::ssu::cache::SSUCacheDirectory::buildTemporaryCacheFilePath(uint64_t a1, const void **a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  LODWORD(v20) = 0;
  v5 = boost::uuids::detail::random_provider_base::random_provider_base(&v20);
  v21 = boost::uuids::random_generator_pure::operator()(v5);
  v22 = v6;
  boost::uuids::detail::random_provider_base::destroy(v20);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = &v17;
  std::string::basic_string[abi:ne200100](&v17, v7 + 1);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v17.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  *(&v8->__r_.__value_.__l.__data_ + v7) = 95;
  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = *(a3 + 8);
  }

  v13 = std::string::append(&v17, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v18, "_");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  operator new();
}

void sub_222986C2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::cache::SSUCacheDirectory::buildTemporaryDirectoryPath(snlp::ssu::cache::SSUCacheDirectory *this@<X0>, std::string *a2@<X8>)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__p, &snlp::ssu::cache::SSUCacheDirectory::kTemporaryDirectoryName);
  std::__fs::filesystem::operator/[abi:ne200100](a2, this, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_222986D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::cache::SSUCacheDirectory::clearCacheFilesForAllLocales(snlp::ssu::cache::SSUCacheDirectory *this)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v2, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Clearing cache files for all locales", &__p, 2u);
  }

  snlp::ssu::cache::SSUCacheDirectory::buildLocalesDirectoryPath(this, &__p);
  std::recursive_mutex::lock((this + 24));
  std::__fs::filesystem::__status(&__p, 0);
  if (v8 == 2)
  {
    v3 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v10 = p_p;
      _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Removing locales directory: %s", buf, 0xCu);
    }

    std::__fs::filesystem::__remove_all(&__p, 0);
  }

  std::recursive_mutex::unlock((this + 24));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

void sub_222986ED4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, __int128 buf)
{
  if (a2 == 1)
  {
    v17 = __cxa_begin_catch(a1);
    v18 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = (*(*v17 + 16))(v17);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v19;
      _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Hit filesystem error: %s)", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x222986E90);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL snlp::ssu::cache::SSUCacheDirectory::clearCacheFilesOutsideLocale(uint64_t a1, std::string::size_type a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Clearing cache files for all locales except %s", &buf, 0xCu);
  }

  snlp::ssu::cache::SSUCacheDirectory::buildLocalesDirectoryPath(a1, &buf);
  std::recursive_mutex::lock((a1 + 24));
  MEMORY[0x223DC4A70](&v27, &buf, 0, 0);
  v6 = v27;
  v7 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v28;
    v26.__imp_.__ptr_ = v6;
    v26.__imp_.__cntrl_ = v7;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v26.__imp_.__ptr_ = v27;
    v26.__imp_.__cntrl_ = 0;
  }

  while (1)
  {
    v9 = v26.__imp_.__ptr_ == 0;
    if (!v26.__imp_.__ptr_)
    {
      break;
    }

    v10 = std::__fs::filesystem::directory_iterator::__dereference(&v26);
    v11 = v10;
    if (((1 << v10[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
    {
      std::__fs::filesystem::__status(v10, 0);
      v12 = __p.__r_.__value_.__s.__data_[0];
    }

    else
    {
      v12 = v10[3].__pn_.__r_.__value_.__s.__data_[0];
    }

    if (v12 == 2)
    {
      std::__fs::filesystem::path::filename[abi:ne200100](v11, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v30 = __p;
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      v17 = *(a2 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(a2 + 8);
      }

      if (size != v17 || ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v19 = &v30) : (v19 = v30.__r_.__value_.__r.__words[0]), (v20 = *a2, v18 >= 0) ? (v21 = a2) : (v21 = *a2), memcmp(v19, v21, size)))
      {
        v22 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          if ((v11->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = v11;
          }

          else
          {
            v23 = v11->__pn_.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
          *(__p.__r_.__value_.__r.__words + 4) = v23;
          _os_log_impl(&dword_22284A000, v22, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Removing locale directory: %s", &__p, 0xCu);
        }

        std::__fs::filesystem::__remove_all(v11, 0);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v13 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((v11->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = v11;
        }

        else
        {
          v15 = v11->__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(v30.__r_.__value_.__l.__data_) = 136315394;
        *(v30.__r_.__value_.__r.__words + 4) = p_buf;
        WORD2(v30.__r_.__value_.__r.__words[1]) = 2080;
        *(&v30.__r_.__value_.__r.__words[1] + 6) = v15;
        _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Encountered bad cache directory state: the locales directory %s contains a non-directory file: %s. Ignoring.", &v30, 0x16u);
      }
    }

    std::__fs::filesystem::directory_iterator::__increment(&v26, 0);
  }

  if (v26.__imp_.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26.__imp_.__cntrl_);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::recursive_mutex::unlock((a1 + 24));
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_222987410(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x222987424);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100]();
  }

  std::recursive_mutex::unlock((v31 + 24));
  if (a2 == 1)
  {
    v26 = __cxa_begin_catch(v30);
    v27 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      if (*(v24 - 105) >= 0)
      {
        v28 = v24 - 128;
      }

      else
      {
        v28 = *(v24 - 128);
      }

      v29 = (*(*v26 + 16))(v26);
      v34 = 136315394;
      v35 = v28;
      v36 = 2080;
      v37 = v29;
      _os_log_impl(&dword_22284A000, v27, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Hit filesystem error during iteration over %s: %s)", &v34, 0x16u);
    }

    __cxa_end_catch();
    JUMPOUT(0x222987384);
  }

  JUMPOUT(0x222987518);
}

uint64_t snlp::ssu::cache::SSUCacheDirectory::removeCacheFilesForApp(uint64_t a1, std::string::size_type a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Attempting to removing cache files across all locales for app: %s", &buf, 0xCu);
  }

  snlp::ssu::cache::SSUCacheDirectory::buildLocalesDirectoryPath(a1, &buf);
  std::recursive_mutex::lock((a1 + 24));
  MEMORY[0x223DC4A70](&v24, &buf, 0, 0);
  v6 = v24;
  v7 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = v25;
    v23.__imp_.__ptr_ = v6;
    v23.__imp_.__cntrl_ = v7;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v23.__imp_.__ptr_ = v24;
    v23.__imp_.__cntrl_ = 0;
  }

  v9 = 0;
  while (v23.__imp_.__ptr_)
  {
    v10 = std::__fs::filesystem::directory_iterator::__dereference(&v23);
    v11 = v10;
    if (((1 << v10[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
    {
      std::__fs::filesystem::__status(v10, 0);
      v12 = __p.__r_.__value_.__s.__data_[0];
    }

    else
    {
      v12 = v10[3].__pn_.__r_.__value_.__s.__data_[0];
    }

    if (v12 == 2)
    {
      std::__fs::filesystem::path::filename[abi:ne200100](v11, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v28 = __p;
      }

      snlp::ssu::cache::SSUCacheDirectory::buildAppBundleDirectoryPath(a1, &v28, a2, &__p);
      std::__fs::filesystem::__status(&__p, 0);
      if (v26[0] == 2)
      {
        v16 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *v26 = 136315138;
          v27 = p_p;
          _os_log_impl(&dword_22284A000, v16, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Removing app bundle directory: %s", v26, 0xCu);
        }

        std::__fs::filesystem::__remove_all(&__p, 0);
        ++v9;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v13 = SNLPOSLoggerForCategory(8);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        p_buf = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if ((v11->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = v11;
        }

        else
        {
          v15 = v11->__pn_.__r_.__value_.__r.__words[0];
        }

        LODWORD(v28.__r_.__value_.__l.__data_) = 136315394;
        *(v28.__r_.__value_.__r.__words + 4) = p_buf;
        WORD2(v28.__r_.__value_.__r.__words[1]) = 2080;
        *(&v28.__r_.__value_.__r.__words[1] + 6) = v15;
        _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Encountered bad cache directory state: the locales directory %s contains a non-directory file: %s. Ignoring.", &v28, 0x16u);
      }
    }

    std::__fs::filesystem::directory_iterator::__increment(&v23, 0);
  }

  if (v23.__imp_.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23.__imp_.__cntrl_);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::recursive_mutex::unlock((a1 + 24));
  if (!v9)
  {
    v18 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      LODWORD(v28.__r_.__value_.__l.__data_) = 136315138;
      *(v28.__r_.__value_.__r.__words + 4) = v19;
      _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Found no cache files for app: %s. Doing nothing.", &v28, 0xCu);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v9 | 0x100000000 | v9 & 0xFFFFFF00;
}

void sub_2229878FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int128 buf, int a27, __int16 a28, char a29, char a30)
{
  std::recursive_mutex::unlock((v30 + 24));
  if (a2 == 1)
  {
    v34 = __cxa_begin_catch(a1);
    v35 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = (*(*v34 + 16))(v34);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v36;
      _os_log_impl(&dword_22284A000, v35, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Hit filesystem error: %s)", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x2229878A8);
  }

  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
  }

  _Unwind_Resume(a1);
}

void snlp::ssu::cache::SSUCacheDirectory::lookupCacheFilesForLocale(uint64_t a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  snlp::ssu::cache::SSUCacheDirectory::buildLocalesDirectoryPath(a1, buf);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&__p, a2);
  std::__fs::filesystem::operator/[abi:ne200100](&v38.__pn_, buf, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  memset(&__p, 0, sizeof(__p));
  std::recursive_mutex::lock((a1 + 24));
  std::__fs::filesystem::__status(&v38, 0);
  if (buf[0] == 2)
  {
    MEMORY[0x223DC4A70](&v35, &v38, 0, 0);
    v4 = v35;
    v5 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = v36;
      v34.__imp_.__ptr_ = v4;
      v34.__imp_.__cntrl_ = v5;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }

    else
    {
      v34.__imp_.__ptr_ = v35;
      v34.__imp_.__cntrl_ = 0;
    }

    while (v34.__imp_.__ptr_)
    {
      v7 = std::__fs::filesystem::directory_iterator::__dereference(&v34);
      v8 = v7;
      if (((1 << v7[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
      {
        std::__fs::filesystem::__status(v7, 0);
        v9 = buf[0];
      }

      else
      {
        v9 = v7[3].__pn_.__r_.__value_.__s.__data_[0];
      }

      if (v9 == 2)
      {
        std::__fs::filesystem::path::filename[abi:ne200100](v8, buf);
        if ((buf[23] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(&v39, *buf, *&buf[8]);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v39 = *buf;
        }

        snlp::ssu::cache::SSUCacheDirectory::lookupCacheFilesForApp(a1, a2, &v39, &v32);
        v13 = v33;
        v14 = v32;
        if (v32 == v33)
        {
          v19 = SNLPOSLoggerForCategory(8);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            if ((v8->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v20 = v8;
            }

            else
            {
              v20 = v8->__pn_.__r_.__value_.__r.__words[0];
            }

            v21 = &v39;
            if ((v39.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v21 = v39.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            *&buf[4] = v20;
            *&buf[12] = 2080;
            *&buf[14] = v21;
            _os_log_impl(&dword_22284A000, v19, OS_LOG_TYPE_ERROR, "Failed to find any cache files for directory: %s (app bundle ID: %s). Skipping.", buf, 0x16u);
          }
        }

        else
        {
          v15 = v33 - v32;
          if (v33 - v32 >= 1)
          {
            size = __p.__r_.__value_.__l.__size_;
            if ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__l.__size_) >= v15)
            {
              v22 = 0;
              v23 = __p.__r_.__value_.__l.__size_;
              do
              {
                snlp::ssu::cache::SSUCacheDirectory::CacheFileResult::CacheFileResult(v23, v14);
                v14 += 104;
                v23 += 104;
                v22 -= 104;
              }

              while (v14 != v13);
              __p.__r_.__value_.__l.__size_ = v23;
            }

            else
            {
              v17 = 0x4EC4EC4EC4EC4EC5 * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3) + 0x4EC4EC4EC4EC4EC5 * (v15 >> 3);
              if (v17 > 0x276276276276276)
              {
                std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
              }

              if (0x9D89D89D89D89D8ALL * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3) > v17)
              {
                v17 = 0x9D89D89D89D89D8ALL * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3);
              }

              if ((0x4EC4EC4EC4EC4EC5 * ((__p.__r_.__value_.__r.__words[2] - __p.__r_.__value_.__r.__words[0]) >> 3)) >= 0x13B13B13B13B13BLL)
              {
                v18 = 0x276276276276276;
              }

              else
              {
                v18 = v17;
              }

              p_p = &__p;
              if (v18)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>>(v18);
              }

              v24 = 8 * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3);
              *buf = 0;
              *&buf[8] = v24;
              *&buf[16] = v24;
              *&buf[24] = 0;
              v25 = v24 + v15;
              do
              {
                snlp::ssu::cache::SSUCacheDirectory::CacheFileResult::CacheFileResult(v24, v14);
                v24 += 104;
                v14 += 104;
                v15 -= 104;
              }

              while (v15);
              *&buf[16] = v25;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>,snlp::ssu::cache::SSUCacheDirectory::CacheFileResult*>(&__p, size, __p.__r_.__value_.__l.__size_, v25);
              *&buf[16] += __p.__r_.__value_.__l.__size_ - size;
              __p.__r_.__value_.__l.__size_ = size;
              v26 = *&buf[8] + __p.__r_.__value_.__r.__words[0] - size;
              std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>,snlp::ssu::cache::SSUCacheDirectory::CacheFileResult*>(&__p, __p.__r_.__value_.__l.__data_, size, v26);
              v27 = __p.__r_.__value_.__r.__words[0];
              v28 = __p.__r_.__value_.__r.__words[2];
              __p.__r_.__value_.__r.__words[0] = v26;
              *&__p.__r_.__value_.__r.__words[1] = *&buf[16];
              *&buf[16] = v27;
              *&buf[24] = v28;
              *buf = v27;
              *&buf[8] = v27;
              std::__split_buffer<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::~__split_buffer(buf);
            }
          }
        }

        *buf = &v32;
        std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](buf);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v11 = &v38;
          if ((v38.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v11 = v38.__pn_.__r_.__value_.__r.__words[0];
          }

          if ((v8->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = v8;
          }

          else
          {
            v12 = v8->__pn_.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = v12;
          _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_ERROR, "Found non-directory entry in directory %s: %s. Skipping.", buf, 0x16u);
        }
      }

      std::__fs::filesystem::directory_iterator::__increment(&v34, 0);
    }

    if (v34.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34.__imp_.__cntrl_);
    }

    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    std::recursive_mutex::unlock((a1 + 24));
    *a3 = __p;
    memset(&__p, 0, sizeof(__p));
  }

  else
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
    std::recursive_mutex::unlock((a1 + 24));
  }

  v39.__r_.__value_.__r.__words[0] = &__p;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&v39);
  if (SHIBYTE(v38.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__pn_.__r_.__value_.__l.__data_);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_222987F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, __int128 buf, int a38, __int16 a39, char a40, char a41)
{
  std::recursive_mutex::unlock((a14 + 24));
  if (a2 == 1)
  {
    v43 = __cxa_begin_catch(a1);
    v44 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = (*(*v43 + 16))(v43);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v45;
      _os_log_impl(&dword_22284A000, v44, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Hit filesystem error: %s", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x222987F04);
  }

  *&buf = &a23;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>>(unint64_t a1)
{
  if (a1 < 0x276276276276277)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t snlp::ssu::cache::SSUCacheDirectory::CacheFileResult::CacheFileResult(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  return a1;
}

void sub_22298829C(_Unwind_Exception *a1)
{
  snlp::ssu::matcher::SSUAppInfo::~SSUAppInfo((v1 + 32));
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 104;
    std::allocator_traits<std::allocator<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>>::destroy[abi:ne200100]<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult,0>(v3 - 104);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>>::destroy[abi:ne200100]<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult,0>(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>,snlp::ssu::cache::SSUCacheDirectory::CacheFileResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v8 = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(a4 + 32) = v8;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(v6 + 32) = 0;
      v9 = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 56) = v9;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 56) = 0;
      v10 = *(v6 + 80);
      *(a4 + 96) = *(v6 + 96);
      *(a4 + 80) = v10;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(v6 + 96) = 0;
      v6 += 104;
      a4 += 104;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>>::destroy[abi:ne200100]<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult,0>(v5);
      v5 += 104;
    }

    while (v5 != a3);
  }
}

void sub_2229886BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  snlp::ssu::matcher::SSUAppInfo::~SSUAppInfo((v29 + 32));
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::optional<std::pair<snlp::ssu::cache::SSUCacheFileVersion,SSUCategoryType>>::~optional(&a9);
  _Unwind_Resume(a1);
}

void snlp::ssu::cache::SSUCacheDirectory::healByRemovingDirectory(snlp::ssu::cache::SSUCacheDirectory *this, const std::__fs::filesystem::path *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2->__pn_.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v18 = v5;
    _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Attempting to heal a corrupted cache by removing all contents under: %s", buf, 0xCu);
  }

  std::recursive_mutex::lock((this + 24));
  std::__fs::filesystem::__status(a2, 0);
  if (v16 == 2)
  {
    v6 = std::__fs::filesystem::__remove_all(a2, 0);
    v7 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = a2->__pn_.__r_.__value_.__r.__words[0];
      }

      *buf = 134218242;
      v18 = v6;
      v19 = 2080;
      v20 = v8;
      v9 = "[SSUCacheDirectory] Successfully removed %lu files/directories under %s";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEBUG;
      v12 = 22;
LABEL_17:
      _os_log_impl(&dword_22284A000, v10, v11, v9, buf, v12);
    }
  }

  else
  {
    v13 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = a2->__pn_.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v18 = v14;
      v9 = "[SSUCacheDirectory] Error: cannot remove non-existing directory: %s";
      v10 = v13;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 12;
      goto LABEL_17;
    }
  }

  std::recursive_mutex::unlock((this + 24));
  v15 = *MEMORY[0x277D85DE8];
}

void sub_2229888D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  std::recursive_mutex::unlock((v11 + 24));
  if (a2 == 1)
  {
    v14 = __cxa_begin_catch(a1);
    v15 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = (*(*v14 + 16))(v14);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v16;
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Hit filesystem error: %s)", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x2229888A8);
  }

  _Unwind_Resume(a1);
}

void snlp::ssu::cache::SSUCacheDirectory::extractMetadataFromCacheFileName(snlp::ssu::cache::SSUCacheDirectory *this, const std::__fs::filesystem::path *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(v4, "([0-9a-f]+)%s([0-9_]+|unknown)%s([0-9]+)%s");
  boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v4);
  boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v4);
  v2[0].__loc_.__locale_ = &snlp::ssu::cache::SSUCacheDirectory::kCacheFileSuffix;
  v2[0].__ct_ = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string_view const>;
  v2[0].__col_ = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string_view const>;
  boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(v4);
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(&v3, v4);
  if (v9 == 1)
  {
    std::locale::~locale(v10);
    v9 = 0;
  }

  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v8);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (v5)
  {
    operator delete(v5);
  }

  v2[0].__loc_.__locale_ = v4;
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](v2);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v2, &v3);
}

void sub_222988F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, std::locale a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  snlp::ssu::matcher::SSUAppInfo::~SSUAppInfo(&a9);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a70)
  {
    operator delete(a70);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a45);
  if (a58 < 0)
  {
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::pair<snlp::ssu::cache::SSUCacheFileVersion,SSUCategoryType>>::~optional(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void snlp::ssu::cache::SSUCacheDirectory::lookupCacheFileForCategory(uint64_t a1@<X0>, std::string *a2@<X1>, std::__fs::filesystem::path *a3@<X2>, unsigned __int8 a4@<W3>, char *a5@<X4>, _BYTE *a6@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = a2->__r_.__value_.__r.__words[0];
    }

    if ((a3->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = a3->__pn_.__r_.__value_.__r.__words[0];
    }

    if (v11 <= 3)
    {
      v15 = EnumNamesSSUCategoryType(void)::names[v11];
    }

    else
    {
      v15 = "";
    }

    if (a5[23] >= 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = *a5;
    }

    *buf = 136315906;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    v38 = 2080;
    v39 = v15;
    v40 = 2080;
    v41 = v16;
    _os_log_impl(&dword_22284A000, v12, OS_LOG_TYPE_DEBUG, "Looking up cache file for locale=%s, appBundleId=%s, category=%s, encoderAssetVersion=%s", buf, 0x2Au);
  }

  snlp::ssu::cache::SSUCacheDirectory::lookupCacheFilesForApp(a1, a2, a3, buf);
  v17 = *buf;
  v18 = *&buf[8];
  if (*buf != *&buf[8])
  {
    v19 = a5[23];
    if (v19 >= 0)
    {
      v20 = a5[23];
    }

    else
    {
      v20 = *(a5 + 1);
    }

    if (v19 < 0)
    {
      a5 = *a5;
    }

    v21 = *buf + 32;
    while (1)
    {
      v22 = *(v21 + 23);
      v23 = v22;
      v24 = *(v21 + 8);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 8);
      }

      if (v20 != v22 || ((v25 = *v21, v23 >= 0) ? (v26 = v21) : (v26 = *v21), memcmp(a5, v26, v20)))
      {
        if (v23 < 0)
        {
          if (v24 != 7)
          {
            goto LABEL_40;
          }

          v27 = *v21;
        }

        else
        {
          v27 = v21;
          if (v23 != 7)
          {
            goto LABEL_40;
          }
        }

        v28 = *v27;
        v29 = *(v27 + 3);
        if (v28 != 1852534389 || v29 != 1853321070)
        {
          goto LABEL_40;
        }
      }

      if (*(v21 - 32) == v11)
      {
        v17 = v21 - 32;
        break;
      }

LABEL_40:
      v31 = v21 + 72;
      v21 += 104;
      if (v31 == v18)
      {
        goto LABEL_47;
      }
    }
  }

  if (v18 == v17)
  {
LABEL_47:
    v34 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v36[0]) = 0;
      _os_log_impl(&dword_22284A000, v34, OS_LOG_TYPE_DEBUG, "Did not find relevant cache file", v36, 2u);
    }

    v33 = 0;
    *a6 = 0;
  }

  else
  {
    v32 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v36[0]) = 0;
      _os_log_impl(&dword_22284A000, v32, OS_LOG_TYPE_DEBUG, "Found relevant cache file.", v36, 2u);
    }

    snlp::ssu::cache::SSUCacheDirectory::CacheFileResult::CacheFileResult(a6, v17);
    v33 = 1;
  }

  a6[104] = v33;
  v36[0] = buf;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](v36);
  v35 = *MEMORY[0x277D85DE8];
}

void sub_22298949C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  a9 = &a11;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::cache::SSUCacheDirectory::insertCacheFile(uint64_t a1, std::string *a2, std::__fs::filesystem::path *a3, uint64_t a4, int a5, uint64_t a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v12 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = a2->__r_.__value_.__r.__words[0];
    }

    if ((a3->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = a3->__pn_.__r_.__value_.__r.__words[0];
    }

    snlp::ssu::cache::SSUCacheFileVersion::toString(&__p);
  }

  std::recursive_mutex::lock((a1 + 24));
  snlp::ssu::cache::SSUCacheDirectory::prepareAppBundleDirectoryForInsertion(a1, a2, a3, a5, &buf);
  snlp::ssu::cache::SSUCacheDirectory::buildCacheFilePath(a1, a2, &a3->__pn_, a4, a5, &__p);
  v15 = SNLPOSLoggerForCategory(8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    if (*(a6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *a6, *(a6 + 8));
    }

    else
    {
      v22 = *a6;
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v22;
    }

    else
    {
      v16 = v22.__r_.__value_.__r.__words[0];
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v21 = __p;
    }

    v17 = &v21;
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v21.__r_.__value_.__r.__words[0];
    }

    *v23 = 136315394;
    v24 = v16;
    v25 = 2080;
    v26 = v17;
    _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Atomically renaming temporary file %s to final location %s", v23, 0x16u);
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  std::__fs::filesystem::__rename(a6, &__p, 0);
  v18 = v29;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  std::recursive_mutex::unlock((a1 + 24));
  v19 = *MEMORY[0x277D85DE8];
  return v18 | 0x100u;
}

void sub_222989794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, __int128 buf, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(buf);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  std::recursive_mutex::unlock((v35 + 24));
  if (a2 == 1)
  {
    v38 = __cxa_begin_catch(a1);
    v39 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = (*(*v38 + 16))(v38);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v40;
      _os_log_impl(&dword_22284A000, v39, OS_LOG_TYPE_ERROR, "[SSUCacheDirectory] Hit filesystem error: %s)", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x222989754);
  }

  _Unwind_Resume(a1);
}

void snlp::ssu::cache::SSUCacheDirectory::prepareAppBundleDirectoryForInsertion(snlp::ssu::cache::SSUCacheDirectory *a1@<X0>, std::string *a2@<X1>, std::__fs::filesystem::path *a3@<X2>, unsigned __int8 a4@<W3>, std::string *a5@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  snlp::ssu::cache::SSUCacheDirectory::lookupCacheFilesForApp(a1, a2, a3, &v19);
  v10 = v20;
  if (v19 == v20)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    v12 = a4;
    v13 = v19 + 80;
    do
    {
      if (*(v13 - 80) == v12)
      {
        v14 = SNLPOSLoggerForCategory(8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = v13;
          if (*(v13 + 23) < 0)
          {
            v15 = *v13;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
          *(buf.__r_.__value_.__r.__words + 4) = v15;
          _os_log_impl(&dword_22284A000, v14, OS_LOG_TYPE_DEBUG, "[SSUCacheDirectory] Removing existing cache file before inserting new one: %s", &buf, 0xCu);
        }

        std::__fs::filesystem::__remove(v13, 0);
        v11 = 1;
      }

      v16 = v13 + 24;
      v13 += 104;
    }

    while (v16 != v10);
  }

  snlp::ssu::cache::SSUCacheDirectory::buildAppBundleDirectoryPath(a1, a2, &a3->__pn_, &buf);
  std::__fs::filesystem::__status(&buf, 0);
  if (v21 != 2)
  {
    std::__fs::filesystem::__create_directories(&buf, 0);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a5, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    a5[1].__r_.__value_.__s.__data_[0] = v11;
    if (v17 < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a5 = buf;
    a5[1].__r_.__value_.__s.__data_[0] = v11;
  }

  buf.__r_.__value_.__r.__words[0] = &v19;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&buf);
  v18 = *MEMORY[0x277D85DE8];
}

void sub_222989A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = &a11;
  std::vector<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void snlp::ssu::cache::SSUCacheDirectory::buildCacheFilePath(snlp::ssu::cache::SSUCacheDirectory *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, std::string *a6@<X8>)
{
  snlp::ssu::cache::SSUCacheDirectory::buildAppBundleDirectoryPath(a1, a2, a3, &v33);
  std::to_string(&v32, a5);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *a4, *(a4 + 8));
  }

  else
  {
    v31 = *a4;
  }

  size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  v10 = &v31;
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v31.__r_.__value_.__l.__size_;
    v10 = v31.__r_.__value_.__r.__words[0];
  }

  for (; size; --size)
  {
    if (v10->__r_.__value_.__s.__data_[0] == 46)
    {
      v10->__r_.__value_.__s.__data_[0] = 95;
    }

    v10 = (v10 + 1);
  }

  if (*(a4 + 47) >= 0)
  {
    v11 = *(a4 + 47);
  }

  else
  {
    v11 = *(a4 + 32);
  }

  v12 = &v26;
  std::string::basic_string[abi:ne200100](&v26, v11 + 1);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v26.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    if (*(a4 + 47) >= 0)
    {
      v13 = (a4 + 24);
    }

    else
    {
      v13 = *(a4 + 24);
    }

    memmove(v12, v13, v11);
  }

  *(&v12->__r_.__value_.__l.__data_ + v11) = 46;
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v31;
  }

  else
  {
    v14 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v31.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v26, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v27, ".");
  v19 = *&v18->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v32;
  }

  else
  {
    v20 = v32.__r_.__value_.__r.__words[0];
  }

  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v32.__r_.__value_.__l.__size_;
  }

  v22 = std::string::append(&v28, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v29, ".ssu_cache_file");
  v25 = *&v24->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v29, &__p);
  std::__fs::filesystem::operator/[abi:ne200100](a6, &v33, &v29);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_222989D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 81) < 0)
  {
    operator delete(*(v42 - 104));
  }

  if (*(v42 - 57) < 0)
  {
    operator delete(*(v42 - 80));
  }

  _Unwind_Resume(exception_object);
}

const void **nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::doesMatchingSpanHaveLabelAndMatcher(void *__s2, uint64_t a2, int a3, void *a4)
{
  result = a4[6];
  if (result)
  {
    v8 = *(result + 23);
    if ((v8 & 0x8000000000000000) != 0)
    {
      result = *result;
      v8 = *(a4[6] + 8);
    }

    if (v8 == a2 && !memcmp(result, __s2, v8))
    {
      v9 = a4[1];
      v10 = a4[2];
      if (v9 != v10)
      {
        while (*v9 != a3)
        {
          if (++v9 == v10)
          {
            v9 = a4[2];
            return (v9 != v10);
          }
        }
      }

      return (v9 != v10);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::isPersonMatchingSpan(nlv4_inference_orchestrator::post_processing::tree_manipulations::utils *this, const sirinluinternal::MatchingSpan *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "personFullName");
  std::string::basic_string[abi:ne200100]<0>(v23, "personRelationship");
  v3 = v26;
  if ((v26 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v26 & 0x80u) == 0)
  {
    v5 = v26;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::doesMatchingSpanHaveLabelAndMatcher(v4, v5, 2, this);
  v7 = v24;
  v8 = v23[0];
  if ((v24 & 0x80u) == 0)
  {
    v9 = v23;
  }

  else
  {
    v9 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v10 = v24;
  }

  else
  {
    v10 = v23[1];
  }

  v11 = nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::doesMatchingSpanHaveLabelAndMatcher(v9, v10, 2, this);
  v12 = *(this + 6);
  v13 = *(v12 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v12 + 8);
  }

  if (v10 == v13 && (v14 >= 0 ? (v15 = *(this + 6)) : (v15 = *v12), !memcmp(v9, v15, v10)))
  {
    v20 = *(this + 1);
    v21 = *(this + 2);
    if (v20 != v21)
    {
      while (*v20 != 3 && *v20 != 8)
      {
        if (++v20 == v21)
        {
          v20 = *(this + 2);
          break;
        }
      }
    }

    v16 = v21 != v20;
  }

  else
  {
    v16 = 0;
  }

  v17 = v11 | v16;
  if (v6)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  if (v7 < 0)
  {
    operator delete(v8);
    if ((v26 & 0x80) == 0)
    {
      return v18;
    }

LABEL_28:
    operator delete(__p[0]);
    return v18;
  }

  if ((v3 & 0x80) != 0)
  {
    goto LABEL_28;
  }

  return v18;
}

void sub_22298A028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::utils::isSpanFromVocRepo(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 != v2)
  {
    while (*v1 != 3 && *v1 != 8)
    {
      if (++v1 == v2)
      {
        v1 = *(a1 + 16);
        return v2 != v1;
      }
    }
  }

  return v2 != v1;
}

void sub_22298B000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, _Unwind_Exception *exception_objecta, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  a63 = &a27;
  std::vector<nl_featurization::SpanMatcherPattern>::__destroy_vector::operator()[abi:ne200100](&a63);
  __p = &STACK[0x278];
  std::vector<nl_featurization::SpanMatcherPattern>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(&STACK[0x290]);
  __p = &STACK[0x2B8];
  std::vector<uaap_orchestration::grammar::Rule>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (*(v63 - 233) < 0)
  {
    operator delete(*(v63 - 256));
  }

  if (*(v63 - 209) < 0)
  {
    operator delete(*(v63 - 232));
  }

  _Unwind_Resume(a1);
}

void nl_featurization::SpanMatcherPattern::~SpanMatcherPattern(void **this)
{
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table((this + 3));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<nl_featurization::SpanMatcherPattern>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 64;
        std::allocator<nl_featurization::SpanMatcherPattern>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void nl_featurization::vocabulary::Vocabulary::~Vocabulary(nl_featurization::vocabulary::Vocabulary *this)
{
  std::__tree<std::__value_type<unsigned long,std::string>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::string>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::string>>>::destroy(*(this + 10));
  std::__tree<std::__value_type<std::string,unsigned long>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned long>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned long>>>::destroy(*(this + 7));
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nl_featurization::FeaturizerConfig::~FeaturizerConfig(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  v2 = this + 4;
  std::vector<nl_featurization::SpanMatcherPattern>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::allocator<nl_featurization::SpanMatcherPattern>::destroy[abi:ne200100](uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::unordered_set<std::basic_string<char16_t>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::basic_string<char16_t>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::allocator<std::basic_string<char16_t>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t> const&>(a1, i + 8);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::SpanMatcherPattern>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<nl_featurization::SpanMatcherPattern>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    std::allocator<nl_featurization::SpanMatcherPattern>::destroy[abi:ne200100](i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getConfigVocabSize(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this)
{
  v15 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v12, "vocab_size");
  if (std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 5, v12))
  {
    v2 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>(this + 5, v12);
    if (!v2)
    {
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }

    if (*(v2 + 16) != 1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v3 = *(v2 + 10);
  }

  else
  {
    v3 = 0;
  }

  std::to_string(&v14, v3);
  v4 = std::string::insert(&v14, 0, "Vocab size to pre-allocate: ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v11 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  v6 = SNLPOSLoggerForCategory(5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = __p;
    if (v11 < 0)
    {
      v7 = __p[0];
    }

    LODWORD(v14.__r_.__value_.__l.__data_) = 136315138;
    *(v14.__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "%s", &v14, 0xCu);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_22298B8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getSubwordID(uint64_t a1, uint64_t *a2)
{
  v2 = **(a1 + 16);
  v3 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  return (*(*v2 + 504))(v2, a2, v4);
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generatePaddedSubowlBertInput(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this, const nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType *a2)
{
  v61[4] = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OWL Generate Padded E5ML Input", "", &buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Generate Padded E5ML Input", &buf, 2u);
  }

  v9 = *(this + 1);
  if (v9 && !(*(*v9 + 24))(v9))
  {
    if ((*(**(this + 1) + 16))(*(this + 1)))
    {
      MaxNumTokens = nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getMaxNumTokens(this);
      memset(&v57, 0, sizeof(v57));
      if (*(a2 + 160))
      {
        v11 = MaxNumTokens;
        v54 = 0;
        v55 = 0;
        v56 = 0;
        std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v54, *(a2 + 17), *(a2 + 18), (*(a2 + 18) - *(a2 + 17)) >> 2);
        std::vector<float>::reserve(&v57, (v55 - v54) >> 2);
        v12 = v54;
        if (v55 == v54)
        {
          end = v57.__end_;
        }

        else
        {
          v13 = 0;
          end = v57.__end_;
          do
          {
            v15 = v12[v13];
            if (end >= v57.__end_cap_.__value_)
            {
              begin = v57.__begin_;
              v17 = end - v57.__begin_;
              v18 = end - v57.__begin_;
              v19 = v18 + 1;
              if ((v18 + 1) >> 62)
              {
                std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
              }

              v20 = v57.__end_cap_.__value_ - v57.__begin_;
              if ((v57.__end_cap_.__value_ - v57.__begin_) >> 1 > v19)
              {
                v19 = v20 >> 1;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v21 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              if (v21)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v57, v21);
              }

              v22 = end - v57.__begin_;
              v23 = (4 * v18);
              v24 = (4 * v18 - 4 * v22);
              *v23 = v15;
              end = (v23 + 1);
              memcpy(v24, begin, v17);
              v25 = v57.__begin_;
              v57.__begin_ = v24;
              v57.__end_ = end;
              v57.__end_cap_.__value_ = 0;
              if (v25)
              {
                operator delete(v25);
              }
            }

            else
            {
              *end++ = v15;
            }

            v57.__end_ = end;
            ++v13;
            v12 = v54;
          }

          while (v13 < (v55 - v54) >> 2);
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 1065353216;
        std::vector<float>::vector[abi:ne200100](&v53, end - v57.__begin_);
        buf.__r_.__value_.__s.__data_[0] = 0;
        v52 = 0;
        LOBYTE(v49) = 0;
        v50 = 0;
        if (*(a2 + 96) == 1)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v46, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 2);
          LODWORD(__p) = 0;
          std::vector<float>::vector[abi:ne200100](v58, v11);
          v27 = v46;
          if (v47 != v46)
          {
            v28 = (v47 - v46) >> 2;
            if (v28 <= 1)
            {
              v28 = 1;
            }

            v29 = *v58;
            do
            {
              v30 = *v27++;
              *v29++ = v30;
              --v28;
            }

            while (v28);
          }

          *v58 = 1;
          v59 = v11;
          v44 = 0;
          v45 = 0;
          __p = 0;
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v58, &v60, 2uLL);
        }

        if (*(a2 + 128) == 1)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(&v46, *(a2 + 13), *(a2 + 14), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 14) - *(a2 + 13)) >> 3));
          std::vector<float>::vector[abi:ne200100](v58, v11 * v11);
          v31 = *v58;
          v32 = v46;
          if (v47 != v46)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0xAAAAAAAAAAAAAAABLL * ((v47 - v46) >> 3);
            if (v35 <= 1)
            {
              v35 = 1;
            }

            do
            {
              v36 = v32[3 * v34];
              v37 = v32[3 * v34 + 1] - v36;
              if (v37)
              {
                v38 = v37 >> 2;
                if (v38 <= 1)
                {
                  v38 = 1;
                }

                do
                {
                  v39 = *v36++;
                  v31[v33++] = v39;
                  --v38;
                }

                while (v38);
              }

              ++v34;
            }

            while (v34 != v35);
          }

          *v58 = 1;
          v59 = v11;
          v60 = v11;
          v44 = 0;
          v45 = 0;
          __p = 0;
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&__p, v58, v61, 3uLL);
        }

        *v26.i32 = *(this + 3);
        *v58 = *v26.i32;
        std::vector<float>::resize(&v57, v11, v58, v26);
        *v58 = 0;
        std::vector<float>::resize(&v53, v11, v58, v40);
        *v58 = 1;
        v59 = v11;
        v47 = 0;
        v48 = 0;
        v46 = 0;
        std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(&v46, v58, &v60, 2uLL);
      }

      std::__throw_bad_optional_access[abi:ne200100]();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid Bert Module for static E5ML/EspressoV1 Subowl assets!");
    std::runtime_error::runtime_error(exception, &buf);
    exception->__vftable = &unk_2835E9238;
  }

  v41 = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid Bert Module for static E5ML/EspressoV1 Subowl assets!");
  std::runtime_error::runtime_error(v41, &buf);
  v41->__vftable = &unk_2835E9238;
}

void sub_22298C3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  v43 = *(v41 - 176);
  if (v43)
  {
    *(v41 - 168) = v43;
    operator delete(v43);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v41 - 176) = &a15;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v41 - 176));
  std::optional<snlp::common::tensor::InferenceTensor>::~optional(&a18);
  std::optional<snlp::common::tensor::InferenceTensor>::~optional(&a25);
  if (v40)
  {
    operator delete(v40);
  }

  if (v39)
  {
    operator delete(v39);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  v44 = *(v41 - 200);
  if (v44)
  {
    *(v41 - 192) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generatePaddedWholeowlEspressoV1BertInput(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this, const nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OWL Generate Padded WholeOwl espressoV1 Input", "", &buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Generate Padded WholeOwl espressoV1 Input", &buf, 2u);
  }

  v9 = *(this + 1);
  if (v9 && !(*(*v9 + 24))(v9))
  {
    if (!(*(**(this + 1) + 16))(*(this + 1)))
    {
      MaxNumTokens = nlv4_inference_orchestrator::inference_engine::EspressoBertModel::getMaxNumTokens(this);
      memset(&v34, 0, sizeof(v34));
      memset(v33, 0, sizeof(v33));
      std::vector<float>::reserve(&v34, MaxNumTokens);
      v31 = this;
      v12 = *(a2 + 6);
      if (*(a2 + 7) == v12)
      {
        end = v34.__end_;
      }

      else
      {
        v13 = 0;
        end = v34.__end_;
        v15 = 24;
        do
        {
          v16 = *(v12 + v15);
          if (end >= v34.__end_cap_.__value_)
          {
            begin = v34.__begin_;
            v18 = end - v34.__begin_;
            v19 = end - v34.__begin_;
            v20 = v19 + 1;
            if ((v19 + 1) >> 62)
            {
              std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
            }

            v21 = v34.__end_cap_.__value_ - v34.__begin_;
            if ((v34.__end_cap_.__value_ - v34.__begin_) >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            if (v21 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v22 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v22 = v20;
            }

            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v34, v22);
            }

            v23 = v19;
            v24 = (4 * v19);
            v25 = &v24[-v23];
            *v24 = v16;
            end = (v24 + 1);
            memcpy(v25, begin, v18);
            v26 = v34.__begin_;
            v34.__begin_ = v25;
            v34.__end_ = end;
            v34.__end_cap_.__value_ = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            *end++ = v16;
          }

          v34.__end_ = end;
          ++v13;
          v12 = *(a2 + 6);
          v15 += 112;
        }

        while (v13 < 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 7) - v12) >> 4));
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 1065353216;
      std::vector<float>::resize(v33, end - v34.__begin_, &buf, v11);
      *v27.i32 = *(v31 + 3);
      *&buf.__r_.__value_.__l.__data_ = *v27.i32;
      std::vector<float>::resize(&v34, MaxNumTokens, &buf, v27);
      LODWORD(buf.__r_.__value_.__l.__data_) = 0;
      std::vector<float>::resize(v33, MaxNumTokens, &buf, v28);
      buf.__r_.__value_.__r.__words[0] = 1;
      buf.__r_.__value_.__l.__size_ = MaxNumTokens;
      memset(v32, 0, sizeof(v32));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(v32, &buf, &buf.__r_.__value_.__r.__words[2], 2uLL);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid Bert Module for EspressoV1 WholeOwl assets!");
    std::runtime_error::runtime_error(exception, &buf);
    exception->__vftable = &unk_2835E9238;
  }

  v29 = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid Bert Module for EspressoV1 WholeOwl assets!");
  std::runtime_error::runtime_error(v29, &buf);
  v29->__vftable = &unk_2835E9238;
}

void sub_22298CBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((v31 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v30);
  goto LABEL_6;
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::forwardAggregatedBySentence(nlv4_inference_orchestrator::inference_engine::EspressoBertModel *this, const nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  std::chrono::steady_clock::now();
  v4 = SNLPOSLoggerForCategory(7);
  v5 = os_signpost_id_generate(v4);
  v6 = SNLPOSLoggerForCategory(7);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22284A000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "OWL Input Preprocess Aggregated", "", buf, 2u);
    }
  }

  v8 = SNLPOSLoggerForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22284A000, v8, OS_LOG_TYPE_DEFAULT, "BEGIN OWL Input Preprocess Aggregated", buf, 2u);
  }

  nlv4_inference_orchestrator::inference_engine::EspressoBertModel::generateBertInput(this, a2);
}

void sub_22298D6D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (*(v77 - 105) < 0)
  {
    operator delete(*(v77 - 128));
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (a65 < 0)
  {
    operator delete(a60);
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a73)
  {
    operator delete(a73);
  }

  if (a74)
  {
    operator delete(a74);
  }

  nlv4_inference_orchestrator::orchestration::EmbeddingTensor::~EmbeddingTensor(&a75);
  nlv4_inference_orchestrator::inference_engine::EspressoBertModelOutputType::~EspressoBertModelOutputType(v76);
  nlv4_inference_orchestrator::inference_engine::BertModuleOutputType::~BertModuleOutputType(&a76);
  nlv4_inference_orchestrator::inference_engine::BertModuleInputType::~BertModuleInputType(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModelOutputType::~EspressoBertModelOutputType(void **this)
{
  if (*(this + 224) == 1)
  {
    if (*(this + 223) < 0)
    {
      operator delete(this[25]);
    }

    v2 = this[19];
    if (v2)
    {
      this[20] = v2;
      operator delete(v2);
    }
  }

  if (*(this + 144) == 1)
  {
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
    }

    v3 = this[9];
    if (v3)
    {
      this[10] = v3;
      operator delete(v3);
    }
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  v4 = *this;
  if (*this)
  {
    this[1] = v4;
    operator delete(v4);
  }
}

uint64_t std::optional<nlv4_inference_orchestrator::orchestration::EmbeddingTensor>::operator=[abi:ne200100]<nlv4_inference_orchestrator::orchestration::EmbeddingTensor&,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 72) == 1)
  {
    if (a1 != a2)
    {
      std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    }

    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
    std::string::operator=((a1 + 48), (a2 + 48));
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external((a1 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v6 = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = v6;
    }

    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_22298D9A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModel::decodeSubwordPieces(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(**v3 + 152))(&v4);
  sentencepiece::util::Status::~Status(&v4);
}

void sub_22298DA2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void itfm_inference_orchestrator::inference_engine::ITFMModelBuilder::setupEspressoV1Model(std::__fs::filesystem::path *this@<X0>, void *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  std::__fs::filesystem::operator/[abi:ne200100](&v9.__pn_, this, this + 3);
  std::__fs::filesystem::__status(&v9, 0);
  if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__pn_.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__s.__data_[0] && __p.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::operator/[abi:ne200100](&__p, this, this + 3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9.__pn_, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v9.__pn_ = __p;
    }

    operator new();
  }

  std::__fs::filesystem::operator/[abi:ne200100](&v9.__pn_, this, this + 5);
  std::__fs::filesystem::__status(&v9, 0);
  if (SHIBYTE(v9.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__pn_.__r_.__value_.__l.__data_);
  }

  if (__p.__r_.__value_.__s.__data_[0] && __p.__r_.__value_.__s.__data_[0] != 255)
  {
    std::__fs::filesystem::operator/[abi:ne200100](&__p, this, this + 5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v9.__pn_, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v9.__pn_ = __p;
    }

    operator new();
  }

  v3 = SNLPOSLoggerForCategory(2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = SLODWORD(this[2].__pn_.__r_.__value_.__r.__words[2]);
    if (v4 >= 8)
    {
      v6 = SNLPOSLoggerForCategory(4);
      v5 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v9.__pn_.__r_.__value_.__l.__data_) = 136315394;
        *(v9.__pn_.__r_.__value_.__r.__words + 4) = "<UNDEFINED_COMPONENT>";
        WORD2(v9.__pn_.__r_.__value_.__r.__words[1]) = 2048;
        *(&v9.__pn_.__r_.__value_.__r.__words[1] + 6) = v4;
        _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v9, 0x16u);
      }
    }

    else
    {
      v5 = off_2784B6F30[v4];
    }

    LODWORD(v9.__pn_.__r_.__value_.__l.__data_) = 136315138;
    *(v9.__pn_.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&dword_22284A000, v3, OS_LOG_TYPE_ERROR, "[%s] Unable to initialize the ITFM model using Espresso v1", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_22298E204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  *v21 = 0;
  _Unwind_Resume(exception_object);
}

void itfm_inference_orchestrator::inference_engine::ITFME5MLModule::~ITFME5MLModule(void **this)
{
  if (*(this + 479) < 0)
  {
    operator delete(this[57]);
  }

  if (*(this + 455) < 0)
  {
    operator delete(this[54]);
  }

  if (*(this + 431) < 0)
  {
    operator delete(this[51]);
  }

  if (*(this + 407) < 0)
  {
    operator delete(this[48]);
  }

  if (*(this + 383) < 0)
  {
    operator delete(this[45]);
  }

  snlp::common::espresso_inference::e5ml::EspressoE5MLModule::~EspressoE5MLModule(this);
}

uint64_t nlv4_inference_orchestrator::span_matching::hasProbability(uint64_t a1, int *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (v3 >= 8)
  {
    v5 = SNLPOSLoggerForCategory(4);
    v4 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "<UNDEFINED_COMPONENT>";
      v21 = 2048;
      v22 = v3;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v4 = off_2784B6F30[v3];
  }

  std::string::basic_string[abi:ne200100]<0>(buf, v4);
  v6 = *(a1 + 64);
  if (!v6)
  {
    v9 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = buf;
      if (v23 < 0)
      {
        v12 = *buf;
      }

      v18 = 136315138;
      v19 = v12;
      v11 = "[%s] [WARN] MatchingSpan has no USO graph";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v7 = *(v6 + 56);
  if (v7 == *(v6 + 64))
  {
    v9 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = buf;
      if (v23 < 0)
      {
        v13 = *buf;
      }

      v18 = 136315138;
      v19 = v13;
      v11 = "[%s] [WARN] MatchingSpan has USO graph with no identifiers";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v8 = *(*v7 + 24);
  if (!v8)
  {
    v9 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v14 = buf;
      if (v23 < 0)
      {
        v14 = *buf;
      }

      v18 = 136315138;
      v19 = v14;
      v11 = "[%s] [WARN] probability missing from identifier";
      goto LABEL_25;
    }

LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  if ((*(v8 + 16) & 1) == 0)
  {
    v9 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = buf;
      if (v23 < 0)
      {
        v10 = *buf;
      }

      v18 = 136315138;
      v19 = v10;
      v11 = "[%s] [WARN] probability has no value";
LABEL_25:
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_DEBUG, v11, &v18, 0xCu);
      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v15 = 1;
LABEL_27:
  if (v23 < 0)
  {
    operator delete(*buf);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

const void **std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

uint64_t nlv4_inference_orchestrator::span_matching::scoreOfSpan(uint64_t a1, int *a2)
{
  if (nlv4_inference_orchestrator::span_matching::hasProbability(a1, a2))
  {
    return *(*(**(*(a1 + 64) + 56) + 24) + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t nlv4_inference_orchestrator::span_matching::RelativeThresholdMatchingSpansFilter::RelativeThresholdMatchingSpansFilter(uint64_t a1, int *a2, double a3)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2835E6128;
  v4 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = a3;
  if (a3 < 0.0)
  {
    if (v4 >= 8)
    {
      v6 = SNLPOSLoggerForCategory(4);
      v5 = "<UNDEFINED_COMPONENT>";
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "<UNDEFINED_COMPONENT>";
        v17 = 2048;
        v18 = v4;
        _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
      }
    }

    else
    {
      v5 = off_2784B6F30[v4];
    }

    std::string::basic_string[abi:ne200100]<0>(buf, v5);
    v7 = SNLPOSLoggerForCategory(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = buf;
      if (v19 < 0)
      {
        v8 = *buf;
      }

      v9 = *(a1 + 16);
      v12 = 136315394;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_DEBUG, "[%s] [WARN] Negative relative threshold supplied (%f), span filtering will behave strangely", &v12, 0x16u);
    }

    if (v19 < 0)
    {
      operator delete(*buf);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return a1;
}

char **uaap::TimeSpanHandler::handle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = DDResultHasType();
  if (result)
  {

    return uaap::mapTimeSpanToItemizedUsos(a3);
  }

  return result;
}

char **uaap::mapTimeSpanToItemizedUsos(uint64_t a1)
{
  v2 = CFHash(@"TimeSpan");
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::unique_ptr<uaap::UPDDSpan>>>>>::find<unsigned long>(*a1, *(a1 + 8), v2);
  if (result)
  {
    v5 = result[3];
    v4 = result[4];
    if (v4 != v5)
    {
      v6 = 0;
      do
      {
        result = *&v5[8 * v6];
        if (result)
        {
          v7 = **result;
          if (result)
          {
            operator new();
          }
        }

        ++v6;
      }

      while (v6 < (v4 - v5) >> 3);
    }
  }

  return result;
}

void sub_22298EE54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t uaap::TimeSpanHandler::resolveRecurringTimeSpan(siri::ontology::oname::graph::ontology_init *a1, uaap::UPDDTimeSpan *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v6 = *(a3 + 24);
          siri::ontology::oname::graph::ontology_init::Root(a1);
          v7 = siri::ontology::operator!=();
          if ((v7 & 1) == 0)
          {
            siri::ontology::oname::graph::ontology_init::common_RecurringDateTime(v7);
            EntityNode = siri::ontology::UsoGraph::createEntityNode();
            v9 = EntityNode;
            if (*(a1 + 7) || *(a1 + 8) || *(a1 + 10))
            {
              siri::ontology::oname::graph::ontology_init::common_Duration(EntityNode);
              v10 = siri::ontology::UsoGraph::createEntityNode();
              EntityNode = uaap::TimeSpanHandler::resolveTimeSpanWithUnit(a1, a2, v10, v11);
              if (EntityNode)
              {
                uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v10, a1, v12);
              }
            }

            siri::ontology::oname::graph::ontology_init::common_DateTime(EntityNode);
            v13 = siri::ontology::UsoGraph::createEntityNode();
            v15 = uaap::TimeHandler::resolveDateTimeRangeValue(a1, a2, v13, v14);
            if (v15)
            {
              siri::ontology::oname::graph::ontology_init::Argument_recurrenceDateTimes(v15);
              siri::ontology::UsoGraphNode::setSuccessor();
              v18 = *(a1 + 6);
              if (v18)
              {
                if (*(v18 + 24))
                {
                  uaap::TimeHandler::resolveDateTimeQualifierListValue(a1, a2, v13, v17);
                }
              }

              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v9, a1, v16);
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t uaap::TimeSpanHandler::resolveTimeSpan(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          v5 = *(a3 + 24);
          siri::ontology::oname::graph::ontology_init::Root(a1);
          v6 = siri::ontology::operator!=();
          if ((v6 & 1) == 0)
          {
            if (*(a1 + 7) || *(a1 + 8) || *(a1 + 10))
            {
              siri::ontology::oname::graph::ontology_init::common_Duration(v6);
              EntityNode = siri::ontology::UsoGraph::createEntityNode();
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, a1, v8);
            }

            if (*(a1 + 12))
            {
              siri::ontology::oname::graph::ontology_init::common_Time(v6);
              v9 = siri::ontology::UsoGraph::createEntityNode();
              uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(v9, a1, v10);
            }
          }
        }
      }
    }
  }

  return 0;
}

siri::ontology::UsoEntityNode **uaap::TimeSpanHandler::resolveDateTimeRangeSpanGraph(siri::ontology::UsoEntityNode **this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v3 = this;
    if (this[12])
    {
      v5 = *(a2 + 11);
      siri::ontology::oname::graph::ontology_init::common_DateTime(this);
      EntityNode = siri::ontology::UsoGraph::createEntityNode();
      this = uaap::TimeHandler::resolveDateTimeRangeValue(v3, a2, EntityNode, v7);
      if (this)
      {
        uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(EntityNode, v3, v8);
      }
    }
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::TimeSpanHandler::resolveTimeSpanWithUnit(uaap::TimeSpanHandler *this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  result = 0;
  if (this && a2 && a3)
  {
    if ((*(this + 7) || *(this + 8) || *(this + 10)) && (v8 = *(a3 + 3), siri::ontology::oname::graph::ontology_init::common_Duration(0), v9 = siri::ontology::operator!=(), (v9 & 1) == 0))
    {
      v10 = *(this + 10);
      if (v10)
      {
        v11 = *(v10 + 24);
        v12 = siri::ontology::oname::graph::ontology_init::common_TimeUnit_Second(v9);
        result = uaap::TimeSpanHandler::_buildDurationComponentWithValueAndUnit(v11, v12, a2, a3, this);
      }

      else
      {
        result = 0;
      }

      v13 = *(this + 8);
      if (v13)
      {
        v14 = *(v13 + 24);
        v15 = siri::ontology::oname::graph::ontology_init::common_TimeUnit_Minute(result);
        result = uaap::TimeSpanHandler::_buildDurationComponentWithValueAndUnit(v14, v15, a2, a3, this);
      }

      v16 = *(this + 7);
      if (v16)
      {
        v17 = *(v16 + 24);
        v18 = siri::ontology::oname::graph::ontology_init::common_TimeUnit_Hour(result);

        return uaap::TimeSpanHandler::_buildDurationComponentWithValueAndUnit(v17, v18, a2, a3, this);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t uaap::TimeSpanHandler::_buildDurationComponentWithValueAndUnit(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2, uint64_t a3, uint64_t a4, siri::ontology::UsoEntityNode *a5)
{
  siri::ontology::oname::graph::ontology_init::common_TimeUnit_Hour(a1);
  v7 = siri::ontology::operator!=();
  if (!v7 || (siri::ontology::oname::graph::ontology_init::common_TimeUnit_Minute(v7), v7 = siri::ontology::operator!=(), !v7) || (siri::ontology::oname::graph::ontology_init::common_TimeUnit_Second(v7), v7 = siri::ontology::operator!=(), (v7 & 1) == 0))
  {
    siri::ontology::oname::graph::ontology_init::common_DurationComponent(v7);
    EntityNode = siri::ontology::UsoGraph::createEntityNode();
    siri::ontology::oname::graph::ontology_init::Argument_components(EntityNode);
    v9 = siri::ontology::UsoGraphNode::setSuccessor();
    siri::ontology::oname::graph::ontology_init::common_Integer(v9);
    v10 = siri::ontology::UsoGraph::createEntityNode();
    siri::ontology::oname::graph::ontology_init::Argument_value(v10);
    siri::ontology::UsoGraphNode::setSuccessor();
    uaap::UPDDSpan::extractIntValueFromCFStringRef(a1, v11);
    IntNode = siri::ontology::UsoGraph::createIntNode();
    siri::ontology::oname::graph::ontology_init::Argument_integerValue(IntNode);
    siri::ontology::UsoGraphNode::setSuccessor();
    uaap::AbstractDateTimeHandler::appendUtteranceAlignmentToEntity(IntNode, a5, v13);
  }

  return 0;
}

BOOL uaap::TimeSpanHandler::isRecurringTime(_BOOL8 this, uaap::UPDDTimeSpan *a2)
{
  if (this)
  {
    v2 = *(this + 48);
    return v2 && (v3 = *(v2 + 24)) != 0 && CFEqual(@"every", v3) != 0;
  }

  return this;
}

uint64_t uaap::TimeSpanHandler::resolveMinutesBeforeTimeSpanWithUnit(CFTypeRef *this, uaap::UPDDSpan *a2, siri::ontology::UsoGraph *a3, siri::ontology::UsoEntityNode *a4)
{
  if (!this)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v7 = CFEqual(this[1], @"MinutesBefore");
  if (!v7)
  {
    return 0;
  }

  v8 = *(a3 + 3);
  siri::ontology::oname::graph::ontology_init::common_Duration(v7);
  v9 = siri::ontology::operator!=();
  if (v9)
  {
    return 0;
  }

  v11 = this[3];
  v12 = siri::ontology::oname::graph::ontology_init::common_TimeUnit_Minute(v9);

  return uaap::TimeSpanHandler::_buildDurationComponentWithValueAndUnit(v11, v12, a2, a3, this);
}

siri::ontology::oname::graph::ontology_init *uaap::TimeSpanHandler::resolveTimeSpanGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeSpanHandler::resolveTimeSpan(v4, a2, v5, v6);
  }

  return this;
}

siri::ontology::oname::graph::ontology_init *uaap::TimeSpanHandler::resolveRecurringTimeSpanGraph(siri::ontology::oname::graph::ontology_init *this, uaap::UPDDTimeSpan *a2, siri::ontology::UsoGraph *a3)
{
  if (this)
  {
    v4 = this;
    v5 = *(a2 + 11);
    v6 = siri::ontology::oname::graph::ontology_init::Argument_entity(this);

    return uaap::TimeSpanHandler::resolveRecurringTimeSpan(v4, a2, v5, v6);
  }

  return this;
}

void nlv4_inference_orchestrator::pre_processing::Reformulator::~Reformulator(void **this)
{
  v2 = this + 3;
  std::vector<std::pair<std::basic_regex<char,std::regex_traits<char>>,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::inference_engine::BertModelLoadingError::~BertModelLoadingError(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x223DC4D00);
}

void nlv4_inference_orchestrator::orchestration::EmbedderOrchestrator::EmbedderOrchestrator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(a1, "config.json");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(v8 + 1, "reformulations.txt");
  std::__fs::filesystem::path::path[abi:ne200100]<char [14],void>((a1 + 48), "bert.mlmodelc");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>((a1 + 72), "model.espresso.net");
  std::__fs::filesystem::path::path[abi:ne200100]<char [14],void>((a1 + 96), "src_vocab.txt");
  std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>((a1 + 120), "version.yaml");
  v10[0] = 2;
  snlp::common::config::loadConfig(a1 + 144, a4, v10);
  *(a1 + 184) = 0;
  nlv4_inference_orchestrator::pre_processing::Reformulator::Reformulator(a1 + 192, a5);
  *(a1 + 240) = 850045863;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  v9 = 2;
  snlp::common::config::loadConfig(v10, a4, &v9);
  operator new();
}

{
  v8 = std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(a1, "config.json");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(v8 + 1, "reformulations.txt");
  std::__fs::filesystem::path::path[abi:ne200100]<char [14],void>((a1 + 48), "bert.mlmodelc");
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>((a1 + 72), "model.espresso.net");
  std::__fs::filesystem::path::path[abi:ne200100]<char [14],void>((a1 + 96), "src_vocab.txt");
  std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>((a1 + 120), "version.yaml");
  v10[0] = 2;
  snlp::common::config::loadConfig(a1 + 144, a4, v10);
  *(a1 + 184) = 0;
  nlv4_inference_orchestrator::pre_processing::Reformulator::Reformulator(a1 + 192, a5);
  *(a1 + 240) = 850045863;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0;
  v9 = 2;
  snlp::common::config::loadConfig(v10, a4, &v9);
  operator new();
}

void sub_22298F8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  std::mutex::~mutex(v22);
  nlv4_inference_orchestrator::pre_processing::Reformulator::~Reformulator((v21 + 192));
  v24 = *(v21 + 184);
  *(v21 + 184) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(v21 + 144);
  if (*(v21 + 143) < 0)
  {
    operator delete(*(v21 + 120));
  }

  if (*(v21 + 119) < 0)
  {
    operator delete(*(v21 + 96));
  }

  if (*(v21 + 95) < 0)
  {
    operator delete(*(v21 + 72));
  }

  if (*(v21 + 71) < 0)
  {
    operator delete(*(v21 + 48));
  }

  if (*(v21 + 47) < 0)
  {
    operator delete(*(v21 + 24));
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(a1);
}

void sub_22298FBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  MEMORY[0x223DC4D00](v23, 0x10B3C4028DAAE2CLL);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(&a10);
  std::mutex::~mutex(v22);
  nlv4_inference_orchestrator::pre_processing::Reformulator::~Reformulator((v21 + 192));
  v25 = *(v21 + 184);
  *(v21 + 184) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::~__hash_table(v21 + 144);
  if (*(v21 + 143) < 0)
  {
    operator delete(*(v21 + 120));
  }

  if (*(v21 + 119) < 0)
  {
    operator delete(*(v21 + 96));
  }

  if (*(v21 + 95) < 0)
  {
    operator delete(*(v21 + 72));
  }

  if (*(v21 + 71) < 0)
  {
    operator delete(*(v21 + 48));
  }

  if (*(v21 + 47) < 0)
  {
    operator delete(*(v21 + 24));
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType::~EspressoBertModelInputType(nlv4_inference_orchestrator::inference_engine::EspressoBertModelInputType *this)
{
  if (*(this + 160) == 1)
  {
    v2 = *(this + 17);
    if (v2)
    {
      *(this + 18) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 128) == 1)
  {
    v4 = (this + 104);
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  }

  if (*(this + 96) == 1)
  {
    v3 = *(this + 9);
    if (v3)
    {
      *(this + 10) = v3;
      operator delete(v3);
    }
  }

  v4 = (this + 48);
  std::vector<nlv4_inference_orchestrator::orchestration::Token>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<float>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<float>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(a2, a3, v8);
    v13 = a1[1];
    if (v13 != v12)
    {
      v14 = a1[1];
      do
      {
        v16 = *(v14 - 3);
        v14 -= 3;
        v15 = v16;
        if (v16)
        {
          *(v13 - 2) = v15;
          operator delete(v15);
        }

        v13 = v14;
      }

      while (v14 != v12);
    }

    a1[1] = v12;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(char **a1, char **a2, char **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::orchestration::Token *,nlv4_inference_orchestrator::orchestration::Token *,nlv4_inference_orchestrator::orchestration::Token *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      v6 = *(&v5[1].__r_.__value_.__r.__words[1] + 3);
      *&this[1].__r_.__value_.__l.__data_ = *&v5[1].__r_.__value_.__l.__data_;
      *(&this[1].__r_.__value_.__r.__words[1] + 3) = v6;
      if (this != v5)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&this[2].__r_.__value_.__r.__words[1], v5[2].__r_.__value_.__l.__size_, v5[2].__r_.__value_.__r.__words[2], 0xAAAAAAAAAAAAAAABLL * ((v5[2].__r_.__value_.__r.__words[2] - v5[2].__r_.__value_.__l.__size_) >> 3));
      }

      v7 = *&v5[4].__r_.__value_.__l.__data_;
      *&this[3].__r_.__value_.__r.__words[1] = *&v5[3].__r_.__value_.__r.__words[1];
      *&this[4].__r_.__value_.__l.__data_ = v7;
      v5 = (v5 + 112);
      this = (this + 112);
    }

    while (v5 != a2);
  }

  return this;
}

void sub_222990224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  nlv4_inference_orchestrator::inference_engine::EspressoBertModelOutputType::~EspressoBertModelOutputType(&a39);
  nlv4_inference_orchestrator::orchestration::BertPreprocessingOutput::~BertPreprocessingOutput(&a68);
  _Unwind_Resume(a1);
}

uint64_t std::optional<nlv4_inference_orchestrator::orchestration::EmbeddingTensor>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void sub_22299147C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2229916FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t snlp::common::text_uso_graph::bottomUpTreeHash(siri::ontology::UsoGraph **this, const UsoGraphNode *a2)
{
  __src = 0;
  v28 = 0;
  v29 = 0;
  siri::ontology::UsoGraph::getSuccessorsWithEdges(&__p, this[1], this);
  v4 = __p;
  v5 = v25;
  if (__p != v25)
  {
    do
    {
      v6 = v4[1];
      v7 = snlp::common::text_uso_graph::bottomUpTreeHash(*v4, v3);
      v8 = boost::hash<std::string>::operator()(v6 + 32);
      v9 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v8) ^ ((0xC6A4A7935BD1E995 * v8) >> 47))) ^ v7);
      v10 = v28;
      if (v28 >= v29)
      {
        v12 = __src;
        v13 = v28 - __src;
        v14 = (v28 - __src) >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v16 = v29 - __src;
        if ((v29 - __src) >> 2 > v15)
        {
          v15 = v16 >> 2;
        }

        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v15;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v17);
        }

        *(8 * v14) = v9;
        v11 = 8 * v14 + 8;
        memcpy(0, v12, v13);
        v18 = __src;
        __src = 0;
        v28 = v11;
        v29 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v28 = v9;
        v11 = (v10 + 8);
      }

      v28 = v11;
      v4 += 2;
    }

    while (v4 != v5);
    v4 = __p;
  }

  if (v4)
  {
    v25 = v4;
    operator delete(v4);
  }

  (*(*this + 6))(&__p, this);
  v19 = std::__string_hash<char>::operator()[abi:ne200100](&v23, &__p);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  std::__sort<std::__less<unsigned long,unsigned long> &,unsigned long *>();
  if (__src != v28)
  {
    v20 = __src;
    do
    {
      v21 = *v20;
      v20 += 8;
      v19 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v21) ^ ((0xC6A4A7935BD1E995 * v21) >> 47))) ^ v19);
    }

    while (v20 != v28);
  }

  if (__src)
  {
    v28 = __src;
    operator delete(__src);
  }

  return v19;
}

void sub_2229926B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::inference_engine::createInvalidTensorNameErrorMessage(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v32);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Invalid tensor name: ", 21);
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Tensor description: ", 20);
  v13 = *(a1 + 23);
  if (v13 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v13 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Valid options are: [", 20);
  std::ios_base::getloc((v18 + *(*v18 - 24)));
  v19 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  v20 = *a3;
  v21 = a3[1];
  if (*a3 != v21)
  {
    v22 = MEMORY[0x277D82680];
    do
    {
      v23 = *(v20 + 23);
      if (v23 >= 0)
      {
        v24 = v20;
      }

      else
      {
        v24 = *v20;
      }

      if (v23 >= 0)
      {
        v25 = *(v20 + 23);
      }

      else
      {
        v25 = *(v20 + 8);
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, v24, v25);
      std::ios_base::getloc((v26 + *(*v26 - 24)));
      v27 = std::locale::use_facet(&v38, v22);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v38);
      std::ostream::put();
      std::ostream::flush();
      v20 += 24;
    }

    while (v20 != v21);
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "]", 1);
  std::ios_base::getloc((v28 + *(*v28 - 24)));
  v29 = std::locale::use_facet(&v38, MEMORY[0x277D82680]);
  (v29->__vftable[2].~facet_0)(v29, 10);
  std::locale::~locale(&v38);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  v32[0] = *MEMORY[0x277D82818];
  v30 = *(MEMORY[0x277D82818] + 72);
  *(v32 + *(v32[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v33 = v30;
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::iostream::~basic_iostream();
  return MEMORY[0x223DC4C10](&v37);
}

void sub_222992BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::locale::~locale((v9 - 72));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9);
  _Unwind_Resume(a1);
}

void sub_222993CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45)
{
  if (__p)
  {
    a45 = __p;
    operator delete(__p);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  v46 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v46;
    operator delete(v46);
  }

  v47 = STACK[0x3E0];
  if (STACK[0x3E0])
  {
    STACK[0x3E8] = v47;
    operator delete(v47);
  }

  nl_featurization::FeaturizerOutput::~FeaturizerOutput(&STACK[0x218]);
  nl_featurization::FeaturizerInput::~FeaturizerInput(&STACK[0x260]);
  a41 = &STACK[0x290];
  std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](&a41);
  STACK[0x260] = &STACK[0x2F0];
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100](&STACK[0x260]);

  snlp::ssu::matcher::SSUAppInfo::~SSUAppInfo(&STACK[0x350]);
  _Unwind_Resume(a1);
}

void nl_featurization::FeaturizerOutput::~FeaturizerOutput(nl_featurization::FeaturizerOutput *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = this;
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void nl_featurization::FeaturizerInput::~FeaturizerInput(void **this)
{
  v2 = this + 3;
  std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this;
  std::vector<nl_featurization::Token>::__destroy_vector::operator()[abi:ne200100](&v2);
}

uint64_t nl_featurization::tensor::Tensor<unsigned long>::computeAddress(char *a1, char *a2, uint64_t *a3, uint64_t a4)
{
  if (a4 - a3 != a2 - a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Given coordinates do not match tensor shape");
LABEL_18:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a2 == a1)
  {
    return 0;
  }

  v4 = (a2 - a1) >> 3;
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = a3;
  v6 = a1;
  do
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6;
    v6 += 8;
    if (v7 >= v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Coordinates exceed bounds of tensor");
      goto LABEL_18;
    }

    --v4;
  }

  while (v4);
  v10 = (a4 - a3) >> 3;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (a4 - a3) >> 3;
  }

  if (v10 <= v11 - 1)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v12 = 0;
  v13 = 1;
  do
  {
    v14 = *a3++;
    v12 += v14 * v13;
    v15 = *a1;
    a1 += 8;
    v13 *= v15;
    --v11;
  }

  while (v11);
  return v12;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::Token>,nl_featurization::Token*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 16) = 0;
      *(a4 + 40) = *(v6 + 40);
      v6 += 48;
      a4 += 48;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      if (*(v5 + 39) < 0)
      {
        operator delete(*(v5 + 16));
      }

      v5 += 48;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nl_featurization::Token>,nl_featurization::Token*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__split_buffer<nl_featurization::Token>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_222994814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  std::vector<std::pair<sirinluinternal::MatchingSpan_MatcherName,std::string>>::__destroy_vector::operator()[abi:ne200100](&a23);

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<nl_featurization::span_matching::MatchedSpan>,nl_featurization::span_matching::MatchedSpan*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 24));
      }

      v3 -= 32;
    }
  }

  return a1;
}

void nlv4_inference_orchestrator::trees::PlyStateHandler::constructUDA(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 328);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v4, *a2, *(a2 + 8));
  }

  else
  {
    v4 = *a2;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = 0u;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100]((v3 + 88), &v4);
  v12 = v10;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v5);
  }

  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_222994B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode>(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 16);
    *v3 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 40);
    *(v3 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 48) = v6;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 96) = 0;
    *(v3 + 104) = 0;
    *(v3 + 88) = 0;
    *(v3 + 88) = *(a2 + 88);
    *(v3 + 104) = *(a2 + 104);
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    v7 = *(a2 + 128);
    *(v3 + 112) = *(a2 + 112);
    *(v3 + 128) = v7;
    result = v3 + 144;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__emplace_back_slow_path<nlv4_inference_orchestrator::trees::TreeNode>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v5 = 0x1C71C71C71C71C7;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>>(v5);
  }

  v6 = 144 * v2;
  v17 = 0;
  v18 = v6;
  *(&v19 + 1) = 0;
  v7 = *a2;
  *(v6 + 16) = *(a2 + 2);
  *v6 = v7;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v8 = *(a2 + 24);
  *(v6 + 40) = *(a2 + 5);
  *(v6 + 24) = v8;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v9 = a2[3];
  *(v6 + 64) = *(a2 + 8);
  *(v6 + 48) = v9;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(v6 + 72) = *(a2 + 72);
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  *(v6 + 88) = 0;
  *(v6 + 88) = *(a2 + 88);
  *(v6 + 104) = *(a2 + 13);
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  v10 = a2[8];
  *(v6 + 112) = a2[7];
  *(v6 + 128) = v10;
  *&v19 = 144 * v2 + 144;
  v11 = a1[1];
  v12 = 144 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<nlv4_inference_orchestrator::trees::TreeNode>::~__split_buffer(&v17);
  return v16;
}

void nlv4_inference_orchestrator::trees::PlyStateHandler::constructIntent(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 328);
  if (*(a1 + 239) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *(a1 + 216), *(a1 + 224));
  }

  else
  {
    v6 = *(a1 + 216);
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100]((v4 + 88), &v6);
  v16 = &v12;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  v5 = *(*(a1 + 328) + 96);
  *(a1 + 328) = v5 - 144;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (*(a1 + 263) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 240), *(a1 + 248));
  }

  else
  {
    __p = *(a1 + 240);
  }

  v15 = 0;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v11 = 0u;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100]((v5 - 56), &v6);
  v16 = &v12;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  *(a1 + 328) = *(*(a1 + 328) + 96) - 144;
}

void sub_222994FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlv4_inference_orchestrator::trees::PlyStateHandler::doMergePath(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, unsigned __int8 *a6)
{
  memset(&v31, 0, sizeof(v31));
  if (*(a4 + 288) == 1)
  {
    v10 = *(a4 + 96);
    v11 = *(a4 + 248);
    if (v11 > v10)
    {
      std::string::basic_string(&v31, *(a1 + 320), v10, v11 - v10, &v32);
    }
  }

  v13 = *a5;
  v12 = a5[1];
  if (*a5 != v12)
  {
    v14 = 0;
    v15 = 0;
    v16 = a6[23];
    if (v16 >= 0)
    {
      v17 = a6[23];
    }

    else
    {
      v17 = *(a6 + 1);
    }

    if (v16 < 0)
    {
      a6 = *a6;
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v31.__r_.__value_.__l.__size_;
    }

    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v31;
    }

    else
    {
      v19 = v31.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v20 = *(v13 + 71);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v13 + 56);
      }

      if (v20 != v17)
      {
        goto LABEL_43;
      }

      v22 = v21 >= 0 ? (v13 + 48) : *(v13 + 48);
      if (memcmp(v22, a6, v17))
      {
        goto LABEL_43;
      }

      v23 = *(v13 + 47);
      if (v23 < 0)
      {
        if (!*(v13 + 32))
        {
LABEL_27:
          v24 = *(v13 + 32);
          if (v23 >= 0)
          {
            v24 = *(v13 + 47);
          }

          if (v24 == size)
          {
            if (v23 >= 0)
            {
              v25 = (v13 + 24);
            }

            else
            {
              v25 = *(v13 + 24);
            }

            v27 = !memcmp(v25, v19, size) && size != 0;
            v14 |= v27;
          }

          goto LABEL_40;
        }
      }

      else if (!*(v13 + 47))
      {
        goto LABEL_27;
      }

      v15 = 1;
LABEL_40:
      v13 += 144;
      if (v13 == v12)
      {
        goto LABEL_43;
      }
    }
  }

  v15 = 0;
  v14 = 0;
LABEL_43:
  if (a2 && a3)
  {
    if (*(a1 + 356))
    {
      a2 = 0;
    }

    else if ((*(a1 + 400) < 2uLL) | v15 & 1)
    {
      v28 = HIBYTE(v31.__r_.__value_.__r.__words[2]);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = v31.__r_.__value_.__l.__size_;
      }

      a2 = (v28 != 0) & v14;
    }

    else
    {
      a2 = 1;
    }
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  return a2;
}

void nlv4_inference_orchestrator::trees::PlyStateHandler::mergePathToTree(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  v4 = *(a1 + 328);
  v5 = &v41;
  while (*(a1 + 400))
  {
    v6 = *(*(a1 + 368) + 8 * (*(a1 + 392) / 0xAAuLL)) - 4080 * (*(a1 + 392) / 0xAAuLL) + 24 * *(a1 + 392);
    if (*(v6 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v45, *v6, *(v6 + 8));
    }

    else
    {
      v7 = *v6;
      v45.__r_.__value_.__r.__words[2] = *(v6 + 16);
      *&v45.__r_.__value_.__l.__data_ = v7;
    }

    std::deque<std::string>::pop_front(a1 + 360);
    if (*(a1 + 400) || *(v2 + 288))
    {
      v8 = v47;
      if (v47 >= v48)
      {
        v10 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(&v46, &v45);
      }

      else
      {
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v47, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
        }

        else
        {
          v9 = *&v45.__r_.__value_.__l.__data_;
          v47->__r_.__value_.__r.__words[2] = v45.__r_.__value_.__r.__words[2];
          *&v8->__r_.__value_.__l.__data_ = v9;
        }

        v10 = v8 + 1;
      }

      v47 = v10;
      if (v46 >= &v10[-2])
      {
        v12 = v46;
      }

      else
      {
        v12 = v10 - 2;
      }

      memset(&v37, 0, sizeof(v37));
      v35.__r_.__value_.__r.__words[0] = &v37;
      v35.__r_.__value_.__s.__data_[8] = 0;
      if (v10 != v12)
      {
        std::vector<std::string>::__vallocate[abi:ne200100](&v37, 0xAAAAAAAAAAAAAAABLL * ((v10 - v12) >> 3));
      }

      nlv4_inference_orchestrator::trees::join(&v36, a1 + 24, 0);
      v35.__r_.__value_.__r.__words[0] = &v37;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v35);
      v13 = std::__find[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string,std::__identity>(*(*(a1 + 336) + 16), &v36.__r_.__value_.__l.__data_);
      v16 = *(v4 + 88);
      v15 = *(v4 + 96);
      v14 = (v4 + 88);
      if (v15 != v16)
      {
        v17 = v4;
        v18 = v5;
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v45.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v45.__r_.__value_.__l.__size_;
        }

        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v45;
        }

        else
        {
          v20 = v45.__r_.__value_.__r.__words[0];
        }

        v21 = v15 - 96;
        while (1)
        {
          v22 = *(v21 + 23);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = *(v21 + 8);
          }

          if (v22 == size)
          {
            v24 = v23 >= 0 ? v21 : *v21;
            if (!memcmp(v24, v20, size))
            {
              break;
            }
          }

          v25 = v21 - 48;
          v21 -= 144;
          if (v25 == v16)
          {
            v15 = v16;
            goto LABEL_50;
          }
        }

        v15 = v21 + 96;
LABEL_50:
        v5 = v18;
        v4 = v17;
      }

      v2 = a2;
      if (nlv4_inference_orchestrator::trees::PlyStateHandler::doMergePath(a1, v15 != v16, v13 != 0, a2, v14, &v45))
      {
        v4 = v15 - 144;
        if (*(a1 + 400))
        {
          std::vector<std::string>::push_back[abi:ne200100](&v46, (*(*(a1 + 368) + 8 * (*(a1 + 392) / 0xAAuLL)) - 4080 * (*(a1 + 392) / 0xAAuLL) + 24 * *(a1 + 392)));
          std::deque<std::string>::pop_front(a1 + 360);
        }

        v11 = 0;
        goto LABEL_95;
      }

      if (*(a1 + 400))
      {
        v26 = *(*(a1 + 368) + 8 * (*(a1 + 392) / 0xAAuLL)) - 4080 * (*(a1 + 392) / 0xAAuLL) + 24 * *(a1 + 392);
        if (*(v26 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v35, *v26, *(v26 + 8));
        }

        else
        {
          v27 = *v26;
          v35.__r_.__value_.__r.__words[2] = *(v26 + 16);
          *&v35.__r_.__value_.__l.__data_ = v27;
        }

        std::deque<std::string>::pop_front(a1 + 360);
        std::vector<std::string>::push_back[abi:ne200100](&v46, &v35);
        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v37, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
        }

        else
        {
          v37 = v35;
        }

        memset(&v38, 0, sizeof(v38));
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v45;
        }

        v44 = 0;
        v43 = 0u;
        v42 = 0u;
        v41 = 0u;
        v40 = 0u;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](v14, &v37);
        v49[0] = v5;
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v49);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v37.__r_.__value_.__l.__data_);
        }

        v30 = *(v4 + 96);
        if (v13)
        {
          *(a1 + 356) = 0;
        }

        if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v35.__r_.__value_.__l.__data_);
        }

        v11 = 0;
        v4 = v30 - 144;
        goto LABEL_95;
      }

      if (*(a2 + 288) == 1)
      {
        v33 = v4;
        v28 = *(a2 + 96);
        v29 = *(a2 + 248);
        if (v29 > v28)
        {
          std::string::basic_string(&v35, *(a1 + 320), *(a2 + 96), v29 - v28, v49);
          memset(&v37, 0, sizeof(v37));
          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v38, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
          }

          else
          {
            v38 = v35;
          }

          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
          }

          else
          {
            __p = v45;
          }

          *&v40 = v28;
          *(&v40 + 1) = v29;
          v5[1] = 0;
          v5[2] = 0;
          *v5 = 0;
          v31 = *(a2 + 264);
          *(&v42 + 1) = *(a2 + 112);
          *&v43 = v31;
          v32 = *(a2 + 280);
          *(&v43 + 1) = *(a2 + 128);
          v44 = v32;
          std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100](v14, &v37);
          v49[0] = v5;
          std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v49);
          v4 = v33;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v37.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v35.__r_.__value_.__l.__data_);
          }

          goto LABEL_94;
        }

        v11 = 1;
        v4 = v33;
      }

      else
      {
LABEL_94:
        v11 = 1;
      }

LABEL_95:
      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v36.__r_.__value_.__l.__data_);
      }

      goto LABEL_97;
    }

    if (*(v2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *v2, *(v2 + 8));
    }

    else
    {
      v37 = *v2;
    }

    memset(&v38, 0, sizeof(v38));
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v45.__r_.__value_.__l.__data_, v45.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v45;
    }

    v44 = 0;
    v43 = 0u;
    v42 = 0u;
    v41 = 0u;
    v40 = 0u;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::push_back[abi:ne200100]((v4 + 88), &v37);
    v36.__r_.__value_.__r.__words[0] = v5;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v36);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v11 = 1;
LABEL_97:
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
      if (v11)
      {
        break;
      }
    }

    else if (v11)
    {
      break;
    }
  }

  v37.__r_.__value_.__r.__words[0] = &v46;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v37);
}

void sub_222995824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

  a23 = (v34 - 120);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void std::deque<std::string>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 8) + 8 * (v2 / 0xAA)) - 4080 * (v2 / 0xAA) + 24 * v2;
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 40) - 1;
  v5 = v2 + 1;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  if (v5 >= 0x154)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }
}

uint64_t **std::__find[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::__hash_const_iterator<std::__hash_node<std::string,void *> *>,std::string,std::__identity>(uint64_t **a1, const void **a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = *(a2 + 23);
    if (v3 >= 0)
    {
      v4 = *(a2 + 23);
    }

    else
    {
      v4 = a2[1];
    }

    if (v3 >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    do
    {
      v6 = *(v2 + 39);
      v7 = v6;
      if (v6 < 0)
      {
        v6 = v2[3];
      }

      if (v6 == v4)
      {
        v8 = v7 >= 0 ? (v2 + 2) : v2[2];
        if (!memcmp(v8, v5, v4))
        {
          break;
        }
      }

      v2 = *v2;
    }

    while (v2);
  }

  return v2;
}

BOOL nlv4_inference_orchestrator::trees::PlyStateHandler::resetPath(nlv4_inference_orchestrator::trees::PlyStateHandler *this)
{
  *(this + 356) = 0;
  result = std::deque<std::string>::__assign_with_size_random_access[abi:ne200100]<std::string const*>(this + 360);
  if (*(this + 352) == 1)
  {
    *(this + 352) = 0;
  }

  return result;
}

BOOL std::deque<std::string>::__assign_with_size_random_access[abi:ne200100]<std::string const*>(_BOOL8 result)
{
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v4 != v3)
  {
    v24 = v1;
    v25 = v2;
    v5 = result;
    v6 = *(result + 32);
    v7 = *(result + 40);
    v8 = v6 / 0xAA;
    v9 = *(v3 + 8 * (v6 / 0xAA)) - 4080 * (v6 / 0xAA) + 24 * v6;
    v10 = (v6 + v7) / 0xAA;
    v11 = *(v3 + 8 * v10) - 4080 * v10 + 24 * (v6 + v7);
    if (v11 != v9)
    {
      v12 = *(v3 + 8 * v8);
      v13 = (v9 - v12) >> 3;
      v14 = 170 * ((8 * v10 - 8 * v8) >> 3) - 0x5555555555555555 * ((v11 - *(v3 + 8 * v10)) >> 3) + 0x5555555555555555 * v13;
      if (v14 >= 1)
      {
        v15 = (v3 + 8 * v8);
        v16 = v12 - 4080 * v8 + 24 * v6;
        if (v4 == v3)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        if (v9 == v17)
        {
          v18 = 0;
        }

        else
        {
          v18 = 0x5555555555555555 * ((v17 - v12) >> 3) - 0x5555555555555555 * v13;
        }

        v22 = v15;
        v23 = v17;
        std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>::operator+=[abi:ne200100](&v22, v18);
        v19 = v23;
        if (v23 != v11)
        {
          v20 = v22;
          do
          {
            if (*(v19 + 23) < 0)
            {
              operator delete(*v19);
            }

            v19 += 24;
            if (v19 - *v20 == 4080)
            {
              v21 = v20[1];
              ++v20;
              v19 = v21;
            }
          }

          while (v19 != v11);
          v7 = v5[5];
        }

        v5[5] = v7 - v14;
        do
        {
          result = std::deque<std::string>::__maybe_remove_back_spare[abi:ne200100](v5);
        }

        while (result);
      }
    }
  }

  return result;
}

std::string *std::__copy_impl::operator()[abi:ne200100]<std::string const*,std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>,0>(std::string *result, std::string *__str, std::string *a3, std::string **a4, std::string *this)
{
  v6 = a4;
  v7 = __str;
  words = result->__r_.__value_.__r.__words;
  if (__str == a3)
  {
    v12 = __str;
    goto LABEL_14;
  }

  v10 = *a4;
  while (1)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - this + 4080) >> 3);
    if ((0xAAAAAAAAAAAAAAABLL * ((a3 - v7) >> 3)) < v11)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v7) >> 3);
    }

    if (v11)
    {
      break;
    }

LABEL_10:
    v14 = v6[1];
    ++v6;
    v10 = v14;
    this = v14;
  }

  v12 = (v7 + v11);
  v13 = 24 * v11;
  do
  {
    result = std::string::operator=(this++, v7++);
    v13 -= 24;
  }

  while (v13);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_10;
  }

  if (&(*v6)[170] == this)
  {
    v15 = v6[1];
    ++v6;
    this = v15;
  }

LABEL_14:
  *words = v12;
  words[1] = v6;
  words[2] = this;
  return result;
}

void *std::__deque_iterator<std::string,std::string*,std::string&,std::string**,long,170l>::operator+=[abi:ne200100](void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = (result[1] - **result) / 24 + a2;
    if (v3 < 1)
    {
      v5 = 169 - v3;
      v6 = &v2[-(v5 / 0xAA)];
      *result = v6;
      v4 = *v6 + 24 * (169 - (v5 % 0xAA));
    }

    else
    {
      *result = &v2[v3 / 0xAA];
      v4 = v2[v3 / 0xAA] - 4080 * (v3 / 0xAA) + 24 * v3;
    }

    result[1] = v4;
  }

  return result;
}

BOOL std::deque<std::string>::__maybe_remove_back_spare[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 170 * ((v1 - v2) >> 3) - 1;
  }

  v4 = v3 - (a1[5] + a1[4]);
  if (v4 >= 0x154)
  {
    operator delete(*(v1 - 8));
    a1[2] -= 8;
  }

  return v4 > 0x153;
}

void *std::deque<std::string>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0xAA)
  {
    v5 = v4 / 0xAA + 1;
  }

  else
  {
    v5 = v4 / 0xAA;
  }

  v6 = result[4];
  if (v5 >= v6 / 0xAA)
  {
    v7 = v6 / 0xAA;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0xAA)
  {
    for (result[4] = v6 - 170 * v7; v7; --v7)
    {
      v14 = v2[1];
      v16[0] = *v14;
      v2[1] = v14 + 1;
      result = std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(v2, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = v2;
      if (v12)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] = v6 - 170 * v7; v7; --v7)
    {
      v15 = v2[1];
      v16[0] = *v15;
      v2[1] = v15 + 1;
      result = std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(v2, v16);
    }
  }

  return result;
}

void sub_2229960BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void nlv4_inference_orchestrator::trees::PlyStateHandler::addNewPathFragments(uint64_t a1, uint64_t *a2)
{
  __dst[3] = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v3 = *(a1 + 24);
  v4 = *(a1 + 47);
  if (v4 >= 0)
  {
    v3 = a1 + 24;
  }

  if (v4 < 0)
  {
    v4 = *(a1 + 32);
  }

  v6[0] = v3;
  v6[1] = v3 + v4;
  boost::algorithm::detail::is_any_ofF<char>::is_any_ofF<boost::iterator_range<std::__wrap_iter<char const*>>>(__dst, v6);
  boost::algorithm::split<std::vector<std::string>,std::string const&,boost::algorithm::detail::is_any_ofF<char>>(v5, a2, __dst, 1);
}

void sub_222996B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  a16 = &a13;
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::__deque_iterator<std::string,std::string *,std::string&,std::string **,long,170l>,0>(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a4;
  if (a2 == a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
    v19 = result;
    v9 = *a4;
    v10 = a3;
    while (1)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a5 - v9) >> 3);
      if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) >= v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3);
      }

      if (v12)
      {
        v13 = (v10 - 24);
        v14 = -24 * v12;
        do
        {
          v15 = *(a5 - 1);
          a5 -= 24;
          if (v15 < 0)
          {
            operator delete(*a5);
          }

          v16 = *v13;
          *(a5 + 16) = *(v13 + 2);
          *a5 = v16;
          *(v13 + 23) = 0;
          *v13 = 0;
          v13 = (v13 - 24);
          v14 += 24;
        }

        while (v14);
      }

      v10 -= 24 * v12;
      if (v10 == a2)
      {
        break;
      }

      v17 = *--v6;
      v9 = v17;
      a5 = v17 + 4080;
    }

    if (*v6 + 4080 == a5)
    {
      v18 = v6[1];
      ++v6;
      a5 = v18;
    }

    result = v19;
  }

  *result = v8;
  result[1] = v6;
  result[2] = a5;
  return result;
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::__deque_iterator<std::string,std::string *,std::string&,std::string **,long,170l>,0>(__int128 **a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a2;
  if (a2 == a3)
  {
    v12 = a2;
    goto LABEL_16;
  }

  v10 = *a4;
  while (1)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a5 + 4080) >> 3);
    if ((0xAAAAAAAAAAAAAAABLL * ((a3 - v7) >> 3)) < v11)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v7) >> 3);
    }

    if (v11)
    {
      break;
    }

LABEL_12:
    v14 = *(v6 + 1);
    v6 = (v6 + 8);
    v10 = v14;
    a5 = v14;
  }

  v12 = (v7 + 24 * v11);
  do
  {
    if (*(a5 + 23) < 0)
    {
      operator delete(*a5);
    }

    v13 = *v7;
    *(a5 + 16) = *(v7 + 2);
    *a5 = v13;
    a5 += 24;
    *(v7 + 23) = 0;
    *v7 = 0;
    v7 = (v7 + 24);
  }

  while (v7 != v12);
  if (v12 != a3)
  {
    v7 = v12;
    goto LABEL_12;
  }

  if (*v6 + 4080 == a5)
  {
    v15 = *(v6 + 1);
    v6 = (v6 + 8);
    a5 = v15;
  }

LABEL_16:
  *a1 = v12;
  a1[1] = v6;
  a1[2] = a5;
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::string,nlv4_inference_orchestrator::trees::PayloadStartEnd>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 288);
  if (v2 != -1)
  {
    result = (off_2835E6278[v2])(&v3, result);
  }

  *(v1 + 288) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN27nlv4_inference_orchestrator5trees15PayloadStartEndEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  MEMORY[0x223DC3250](a2 + 144);

  JUMPOUT(0x223DC3250);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN27nlv4_inference_orchestrator5trees15PayloadStartEndEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSI_1EJSD_SG_EEEEEEDcSK_DpT0_(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

os_log_t createLogForCategoryString(const char *category)
{
  v1 = os_log_create("com.apple.sirinaturallanguageparsing", category);

  return v1;
}

uint64_t __SNLPOSLoggerForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.sirinaturallanguageparsing", "General");
  v1 = SNLPOSLoggerForCategory::logObjects[0];
  SNLPOSLoggerForCategory::logObjects[0] = v0;

  v2 = os_log_create("com.apple.sirinaturallanguageparsing", "NLv4");
  v3 = qword_280AC1CC0;
  qword_280AC1CC0 = v2;

  v4 = os_log_create("com.apple.sirinaturallanguageparsing", "UaaP");
  v5 = qword_280AC1CD0;
  qword_280AC1CD0 = v4;

  v6 = os_log_create("com.apple.sirinaturallanguageparsing", "Common");
  v7 = qword_280AC1CD8;
  qword_280AC1CD8 = v6;

  v8 = os_log_create("com.apple.sirinaturallanguageparsing", "OWL");
  v9 = qword_280AC1CE0;
  qword_280AC1CE0 = v8;

  v10 = os_log_create("com.apple.sirinaturallanguageparsing", "UPDataDetectors");
  v11 = qword_280AC1CE8;
  qword_280AC1CE8 = v10;

  v12 = os_log_create("com.apple.sirinaturallanguageparsing", "SiriNaturalLanguageParsingSignPosts");
  v13 = qword_280AC1CF0;
  qword_280AC1CF0 = v12;

  v14 = os_log_create("com.apple.sirinaturallanguageparsing", "ITFM");
  v15 = qword_280AC1CC8;
  qword_280AC1CC8 = v14;

  qword_280AC1CF8 = os_log_create("com.apple.sirinaturallanguageparsing", "SSU");

  return MEMORY[0x2821F96F8]();
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::SetIdentityPromoter::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::SetIdentityPromoter *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

uint64_t snlp::ssu::cache::initializeEmptyDirectoryV3(snlp::ssu::cache *this, const std::__fs::filesystem::path *a2)
{
  v9[19] = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v5, &snlp::ssu::cache::kFormatVersionV3Name);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this, &v5);
  std::ofstream::basic_ofstream(&v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v5, &snlp::ssu::cache::SSUCacheDirectory::kLocalesDirectoryName);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this, &v5);
  std::__fs::filesystem::__create_directory(&__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v5, &snlp::ssu::cache::SSUCacheDirectory::kTemporaryDirectoryName);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this, &v5);
  std::__fs::filesystem::__create_directory(&__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x277D82810];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x223DC47C0](&v8);
  std::ostream::~ostream();
  result = MEMORY[0x223DC4C10](v9);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2229974DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::ofstream::~ofstream(&a21);
  _Unwind_Resume(a1);
}

void sub_22299752C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  JUMPOUT(0x222997524);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x223DC47C0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x223DC4C10](a1 + 52);
  return a1;
}

void snlp::ssu::cache::renameAllCacheFiles(uint64_t a1, uint64_t a2)
{
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&__p, &snlp::ssu::cache::SSUCacheDirectory::kLocalesDirectoryName);
  std::__fs::filesystem::operator/[abi:ne200100](&v22, a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  MEMORY[0x223DC4AA0](&v19, &v22, 0, 0);
  v4 = v19;
  v5 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v20;
    v18.__imp_.__ptr_ = v4;
    v18.__imp_.__cntrl_ = v5;
    v18.__rec_ = v21;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    v18.__imp_.__ptr_ = v19;
    v18.__imp_.__cntrl_ = 0;
    v18.__rec_ = v21;
  }

  while (v18.__imp_.__ptr_)
  {
    v7 = std::__fs::filesystem::recursive_directory_iterator::__dereference(&v18);
    v8 = v7;
    if (((1 << v7[3].__pn_.__r_.__value_.__s.__data_[1]) & 0x53) != 0)
    {
      std::__fs::filesystem::__status(v7, 0);
      v9 = __p.__r_.__value_.__s.__data_[0];
    }

    else
    {
      v9 = v7[3].__pn_.__r_.__value_.__s.__data_[0];
    }

    if (v9 == 1)
    {
      std::__fs::filesystem::path::filename[abi:ne200100](v8, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v17, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v17 = __p;
      }

      v10 = *(a2 + 24);
      if (!v10)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v10 + 48))(&__p);
      if (v16)
      {
        std::__fs::filesystem::path::parent_path[abi:ne200100](v8, v12);
        if ((v16 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v11.__pn_, &__p);
        std::__fs::filesystem::operator/[abi:ne200100](&__to.__pn_, v12, &v11);
        if (SHIBYTE(v11.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v11.__pn_.__r_.__value_.__l.__data_);
        }

        if (v13 < 0)
        {
          operator delete(v12[0]);
        }

        std::__fs::filesystem::__rename(v8, &__to, 0);
        if (SHIBYTE(__to.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__to.__pn_.__r_.__value_.__l.__data_);
        }

        if ((v16 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }
    }

    std::__fs::filesystem::recursive_directory_iterator::__increment(&v18, 0);
  }

  if (v18.__imp_.__cntrl_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18.__imp_.__cntrl_);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_2229978A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 49) < 0)
  {
    operator delete(*(v40 - 72));
  }

  _Unwind_Resume(exception_object);
}

void snlp::ssu::cache::makeV3CacheFileName(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  v9 = &v24;
  std::string::basic_string[abi:ne200100](&v24, v8 + 1);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v24.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (*(a1 + 23) >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    memmove(v9, v10, v8);
  }

  *(&v9->__r_.__value_.__l.__data_ + v8) = 46;
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v24, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v25, ".");
  v17 = *&v16->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = *(a3 + 23);
  if (v18 >= 0)
  {
    v19 = a3;
  }

  else
  {
    v19 = *a3;
  }

  if (v18 >= 0)
  {
    v20 = *(a3 + 23);
  }

  else
  {
    v20 = *(a3 + 8);
  }

  v21 = std::string::append(&v26, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v27, ".ssu_cache_file");
  *a4 = *v23;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_222997B40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::cache::migrateDirectoryV1ToV3(snlp::ssu::cache *this, const std::__fs::filesystem::path *a2)
{
  v10[19] = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v5, &snlp::ssu::cache::kFormatVersionV3Name);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this, &v5);
  std::ofstream::basic_ofstream(&v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  v7[0] = &unk_2835E6418;
  v7[3] = v7;
  snlp::ssu::cache::renameAllCacheFiles(this, v7);
  std::__function::__value_func<std::optional<std::string> ()(std::string const&)>::~__value_func[abi:ne200100](v7);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v5, &snlp::ssu::cache::kFormatVersionV1Name);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this, &v5);
  std::__fs::filesystem::__remove(&__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D82810];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x223DC47C0](&v9);
  std::ostream::~ostream();
  result = MEMORY[0x223DC4C10](v10);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222997D90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::ofstream::~ofstream(&a25);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::optional<std::string> ()(std::string const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<snlp::ssu::cache::migrateDirectoryV1ToV3(std::__fs::filesystem::path const&)::$_0,std::allocator<snlp::ssu::cache::migrateDirectoryV1ToV3(std::__fs::filesystem::path const&)::$_0>,std::optional<std::string> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<snlp::ssu::cache::migrateDirectoryV1ToV3(std::__fs::filesystem::path const&)::$_0,std::allocator<snlp::ssu::cache::migrateDirectoryV1ToV3(std::__fs::filesystem::path const&)::$_0>,std::optional<std::string> ()(std::string const&)>::operator()()
{
  v8[1] = *MEMORY[0x277D85DE8];
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v2, "([0-9a-f]+)%s");
  v0[0].__loc_.__locale_ = &snlp::ssu::cache::SSUCacheDirectory::kCacheFileSuffix;
  v0[0].__ct_ = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string_view const>;
  v0[0].__col_ = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string_view const>;
  boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v2);
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(&v1, &v2);
  if (v7 == 1)
  {
    std::locale::~locale(v8);
    v7 = 0;
  }

  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v6);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    operator delete(v3);
  }

  v0[0].__loc_.__locale_ = &v2;
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](v0);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v0, &v1);
}

void sub_222998150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45)
{
  if (v45)
  {
    operator delete(v45);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t snlp::ssu::cache::migrateDirectoryV2ToV3(snlp::ssu::cache *this, const std::__fs::filesystem::path *a2)
{
  v10[19] = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v5, &snlp::ssu::cache::kFormatVersionV3Name);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this, &v5);
  std::ofstream::basic_ofstream(&v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  v7[0] = &unk_2835E6A50;
  v7[3] = v7;
  snlp::ssu::cache::renameAllCacheFiles(this, v7);
  std::__function::__value_func<std::optional<std::string> ()(std::string const&)>::~__value_func[abi:ne200100](v7);
  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v5, &snlp::ssu::cache::kFormatVersionV1Name);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this, &v5);
  std::__fs::filesystem::__remove(&__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<std::string_view,void>(&v5, &snlp::ssu::cache::kFormatVersionV2Name);
  std::__fs::filesystem::operator/[abi:ne200100](&__p, this, &v5);
  std::__fs::filesystem::__remove(&__p, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  v8 = *MEMORY[0x277D82810];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x223DC47C0](&v9);
  std::ostream::~ostream();
  result = MEMORY[0x223DC4C10](v10);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2229984B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  std::ofstream::~ofstream(&a25);
  _Unwind_Resume(a1);
}

void sub_222998514(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  JUMPOUT(0x22299850CLL);
}

uint64_t std::__function::__func<snlp::ssu::cache::migrateDirectoryV2ToV3(std::__fs::filesystem::path const&)::$_0,std::allocator<snlp::ssu::cache::migrateDirectoryV2ToV3(std::__fs::filesystem::path const&)::$_0>,std::optional<std::string> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<snlp::ssu::cache::migrateDirectoryV2ToV3(std::__fs::filesystem::path const&)::$_0,std::allocator<snlp::ssu::cache::migrateDirectoryV2ToV3(std::__fs::filesystem::path const&)::$_0>,std::optional<std::string> ()(std::string const&)>::operator()()
{
  v8[1] = *MEMORY[0x277D85DE8];
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::basic_format(&v2, "([0-9a-f]+)%s([0-9]+)%s");
  boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v2);
  v0[0].__loc_.__locale_ = &snlp::ssu::cache::SSUCacheDirectory::kCacheFileSuffix;
  v0[0].__ct_ = boost::io::detail::call_put_head<char,std::char_traits<char>,std::string_view const>;
  v0[0].__col_ = boost::io::detail::call_put_last<char,std::char_traits<char>,std::string_view const>;
  boost::io::detail::feed_impl<char,std::char_traits<char>,std::allocator<char>,boost::io::detail::put_holder<char,std::char_traits<char>> const&>(&v2);
  boost::basic_format<char,std::char_traits<char>,std::allocator<char>>::str(&v1, &v2);
  if (v7 == 1)
  {
    std::locale::~locale(v8);
    v7 = 0;
  }

  boost::io::basic_altstringbuf<char,std::char_traits<char>,std::allocator<char>>::~basic_altstringbuf(v6);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v3)
  {
    operator delete(v3);
  }

  v0[0].__loc_.__locale_ = &v2;
  std::vector<boost::io::detail::format_item<char,std::char_traits<char>,std::allocator<char>>>::__destroy_vector::operator()[abi:ne200100](v0);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v0, &v1);
}

void sub_222998894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (v45)
  {
    operator delete(v45);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::trees::UsoGraphBuilder::tryAttachSubtreeViaEdgeToNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = *a5;
  EdgeName = siri::ontology::UsoVocabManager::getEdgeName();
  v11 = v10;
  v12 = SNLPOSLoggerForCategory(1);
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = (EdgeName + 8);
      if (*(EdgeName + 31) < 0)
      {
        v14 = *v14;
      }

      (*(*a2 + 48))(v26, a2);
      v15 = v27;
      v16 = v26[0];
      (*(*a4 + 48))(__p, a4);
      v17 = v26;
      if (v15 < 0)
      {
        v17 = v16;
      }

      if (v25 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 136315650;
      v29 = v14;
      v30 = 2080;
      v31 = v17;
      v32 = 2080;
      v33 = v18;
      _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEBUG, "Attaching %s edge, binding %s to %s.", buf, 0x20u);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }
    }

    siri::ontology::UsoGraphNode::setSuccessor();
    v19 = 1;
    v20 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "Insertion of subtree was successful.", buf, 2u);
    }
  }

  else
  {
    v19 = 0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v21 = a3;
      }

      else
      {
        v21 = *a3;
      }

      *buf = 136315138;
      v29 = v21;
      _os_log_impl(&dword_22284A000, v13, OS_LOG_TYPE_DEFAULT, "Warning: could not look up ontology name for edge '%s'", buf, 0xCu);
      v19 = 0;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_222998C14(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 buf)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v20 = __cxa_begin_catch(a1);
    v21 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = (*(*v20 + 16))(v20);
      LODWORD(buf) = 136642819;
      *(&buf + 4) = v22;
      _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEBUG, "Could not insert subtree: %{sensitive}s ", &buf, 0xCu);
    }

    __cxa_end_catch();
    JUMPOUT(0x222998BD4);
  }

  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::trees::UsoGraphBuilder::tryReplaceInsertionPointIncludingParent(uint64_t a1, uint64_t a2, siri::ontology::UsoGraph *a3, uint64_t *a4, uint64_t a5, char **a6, uint64_t a7)
{
  v68 = *MEMORY[0x277D85DE8];
  v11 = *(*(a2 + 8) + 8 * (*(a2 + 32) / 0x1AuLL)) - 3952 * (*(a2 + 32) / 0x1AuLL) + 152 * *(a2 + 32);
  v12 = *(v11 + 88);
  v13 = *(v11 + 96);
  if (v12 == v13)
  {
    goto LABEL_27;
  }

  v14 = (v12 + 48);
  while (1)
  {
    if (*(a7 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v66, *a7, *(a7 + 8));
    }

    else
    {
      v66 = *a7;
    }

    v15 = SHIBYTE(v66.__r_.__value_.__r.__words[2]);
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v66.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v66.__r_.__value_.__l.__size_;
    }

    v17 = *(v14 + 23);
    v18 = v17;
    if (v17 < 0)
    {
      v17 = v14[1];
    }

    if (size != v17)
    {
      v21 = 0;
      if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_21:
      operator delete(v66.__r_.__value_.__l.__data_);
      goto LABEL_22;
    }

    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v66;
    }

    else
    {
      v19 = v66.__r_.__value_.__r.__words[0];
    }

    if (v18 >= 0)
    {
      v20 = v14;
    }

    else
    {
      v20 = *v14;
    }

    v21 = memcmp(v19, v20, size) == 0;
    if (v15 < 0)
    {
      goto LABEL_21;
    }

LABEL_22:
    if (v21)
    {
      break;
    }

    v22 = v14 + 12;
    v14 += 18;
    if (v22 == v13)
    {
      goto LABEL_26;
    }
  }

  v13 = (v14 - 6);
LABEL_26:
  v12 = v13;
  v13 = *(v11 + 96);
LABEL_27:
  if (v12 == v13)
  {
    v36 = 0;
    goto LABEL_59;
  }

  std::operator+<char>();
  v23 = std::string::append(&v67, "\n");
  v24 = *&v23->__r_.__value_.__l.__data_;
  v66.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v66.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  v25 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = &v66;
    if ((v66.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v26 = v66.__r_.__value_.__r.__words[0];
    }

    LODWORD(v67.__r_.__value_.__l.__data_) = 136315138;
    *(v67.__r_.__value_.__r.__words + 4) = v26;
    _os_log_impl(&dword_22284A000, v25, OS_LOG_TYPE_DEBUG, "%s", &v67, 0xCu);
  }

  v27 = a4[1];
  v63[0] = *a4;
  v63[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  nlv4_inference_orchestrator::trees::SpanUsoInserter::findSpanEntity(a7, v12, a5, v11, v63, a6, &v64);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v65 != 1)
  {
    v36 = 0;
    goto LABEL_57;
  }

  siri::ontology::UsoGraph::getSuccessors(&v67, *(*(v64 + 11) + 8), *(v64 + 11));
  v28 = v67.__r_.__value_.__l.__size_ - v67.__r_.__value_.__r.__words[0];
  if (v67.__r_.__value_.__r.__words[0])
  {
    v67.__r_.__value_.__l.__size_ = v67.__r_.__value_.__r.__words[0];
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  if (v28 != 8)
  {
    v36 = 0;
    if ((v65 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_56:
    std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v64);
    goto LABEL_57;
  }

  if ((v65 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  siri::ontology::UsoGraph::getSuccessors(&v67, *(*(v64 + 11) + 8), *(v64 + 11));
  v29 = *v67.__r_.__value_.__l.__data_;
  v67.__r_.__value_.__l.__size_ = v67.__r_.__value_.__r.__words[0];
  operator delete(v67.__r_.__value_.__l.__data_);
  (*(*v29 + 6))(&v67, v29);
  v30 = a4[1];
  v62[0] = *a4;
  v62[1] = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = nlv4_inference_orchestrator::trees::UsoGraphBuilder::checkIfTimeDateReplacementHackApplies(a1, v29, v11 + 48, v62);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if (v31)
  {
    if ((v65 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v32 = siri::ontology::UsoGraph::deepCopyToGraph(v64, v29, a3);
    v33 = *(v11 + 144);
    v34 = a4[1];
    v61[0] = *a4;
    v61[1] = v34;
    if (v34)
    {
      atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
    }

    nlv4_inference_orchestrator::trees::UsoGraphBuilder::tryAttachSubtreeViaEdgeToNode(v32, v32, a1, v33, v61);
    if (v34)
    {
      v35 = v34;
      goto LABEL_86;
    }

    goto LABEL_87;
  }

  if (nlv4_inference_orchestrator::trees::UsoGraphBuilder::checkIfCommonIntegerHackApplies(a1, v29, (v11 + 48)))
  {
    if ((v65 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v39 = siri::ontology::UsoGraph::deepCopyToGraph(v64, v29, a3);
    Successors = siri::ontology::UsoGraph::getSuccessors(__p, *(v39 + 8), v39);
    v41 = *__p[0];
    v42 = *(v11 + 144);
    v43 = *a4;
    v44 = a4[1];
    v59[0] = v43;
    v59[1] = v44;
    if (v44)
    {
      atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    nlv4_inference_orchestrator::trees::UsoGraphBuilder::tryAttachSubtreeViaEdgeToNode(Successors, v41, v11 + 48, v42, v59);
    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    goto LABEL_87;
  }

  v45 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v46 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v46 = v67.__r_.__value_.__l.__size_;
  }

  v47 = *(v11 + 23);
  v48 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v47 = *(v11 + 8);
  }

  if (v46 == v47 && ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v49 = &v67) : (v49 = v67.__r_.__value_.__r.__words[0]), v48 >= 0 ? (v50 = v11) : (v50 = *v11), !memcmp(v49, v50, v46)))
  {
    v36 = 0;
    if (v45 < 0)
    {
      goto LABEL_88;
    }
  }

  else
  {
    if ((v65 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v51 = siri::ontology::UsoGraph::deepCopyToGraph(v64, v29, a3);
    v52 = *(v11 + 144);
    v53 = *a4;
    v54 = a4[1];
    v58[0] = v53;
    v58[1] = v54;
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    nlv4_inference_orchestrator::trees::UsoGraphBuilder::tryAttachSubtreeViaEdgeToNode(v51, v51, v11 + 48, v52, v58);
    if (v54)
    {
      v35 = v54;
LABEL_86:
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

LABEL_87:
    std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::pop_front(a2);
    v36 = 1;
    if ((*(&v67.__r_.__value_.__s + 23) & 0x80) != 0)
    {
LABEL_88:
      operator delete(v67.__r_.__value_.__l.__data_);
    }
  }

  if (v65)
  {
    goto LABEL_56;
  }

LABEL_57:
  if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

LABEL_59:
  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

void sub_222999234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  if (*(v35 - 105) < 0)
  {
    operator delete(*(v35 - 128));
  }

  if (a26 == 1)
  {
    std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a25);
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL nlv4_inference_orchestrator::trees::UsoGraphBuilder::checkIfTimeDateReplacementHackApplies(uint64_t a1, char **a2, std::string::size_type a3, uint64_t *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = *a4;
  EdgeName = siri::ontology::UsoVocabManager::getEdgeName();
  if ((v9 & 1) == 0)
  {
    v15 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v16;
      _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEFAULT, "Warning: could not look up ontology name for parent argument '%s'", &__p, 0xCu);
    }

    goto LABEL_11;
  }

  v10 = EdgeName;
  if ((*(*a2 + 2))(a2) != 2)
  {
LABEL_11:
    v17 = 0;
    goto LABEL_12;
  }

  v11 = **a2;
  if (!v12)
  {
    __cxa_bad_cast();
  }

  v13 = v12[3];
  if (*(v13 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v13 + 8), *(v13 + 16));
  }

  else
  {
    v14 = *(v13 + 8);
    __p.__r_.__value_.__r.__words[2] = *(v13 + 24);
    *&__p.__r_.__value_.__l.__data_ = v14;
  }

  if (!std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 48), &__p.__r_.__value_.__l.__data_))
  {
    goto LABEL_28;
  }

  v20 = *(a1 + 47);
  if (v20 >= 0)
  {
    v21 = *(a1 + 47);
  }

  else
  {
    v21 = *(a1 + 32);
  }

  v22 = *(v10 + 31);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(v10 + 16);
  }

  if (v21 == v22)
  {
    v26 = *(a1 + 24);
    v25 = (a1 + 24);
    v24 = v26;
    if (v20 >= 0)
    {
      v27 = v25;
    }

    else
    {
      v27 = v24;
    }

    v30 = *(v10 + 8);
    v29 = (v10 + 8);
    v28 = v30;
    if (v23 >= 0)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v17 = memcmp(v27, v31, v21) == 0;
  }

  else
  {
LABEL_28:
    v17 = 0;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t nlv4_inference_orchestrator::trees::UsoGraphBuilder::checkIfCommonIntegerHackApplies(uint64_t a1, siri::ontology::UsoGraph **a2, const void **a3)
{
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<int,unsigned int,float,BOOL,std::string>>>>::find<std::string>((a1 + 200), a3);
  (*(*a2 + 6))(__p, a2);
  v6 = *(a1 + 263);
  if (v6 >= 0)
  {
    v7 = *(a1 + 263);
  }

  else
  {
    v7 = *(a1 + 248);
  }

  v8 = v23;
  v9 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v7 == v8)
  {
    v12 = *(a1 + 240);
    v11 = a1 + 240;
    v10 = v12;
    v13 = (v6 >= 0 ? v11 : v10);
    v14 = (v23 & 0x80u) == 0 ? __p : __p[0];
    if (!memcmp(v13, v14, v7))
    {
      siri::ontology::UsoGraph::getSuccessors(&v20, a2[1], a2);
      v17 = v20;
      if (v21 - v20 == 8)
      {
        siri::ontology::UsoGraph::getSuccessors(&v18, a2[1], a2);
        if (v19 == v18)
        {
          std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
        }

        v15 = (*(**v18 + 16))() == 4;
        if (v18)
        {
          v19 = v18;
          operator delete(v18);
        }

        v17 = v20;
        if (!v20)
        {
LABEL_25:
          if ((v23 & 0x80) == 0)
          {
            return (v5 != 0) & v15;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v15 = 0;
        if (!v20)
        {
          goto LABEL_25;
        }
      }

      v21 = v17;
      operator delete(v17);
      goto LABEL_25;
    }
  }

  v15 = 0;
  if ((v9 & 0x80) != 0)
  {
LABEL_15:
    operator delete(__p[0]);
  }

  return (v5 != 0) & v15;
}

void sub_2229996D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::pop_front(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 8 * (*(a1 + 32) / 0x1AuLL)) - 3952 * (*(a1 + 32) / 0x1AuLL) + 152 * *(a1 + 32);
  v4 = (v2 + 88);
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(v2 + 71) < 0)
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

  v3 = vaddq_s64(*(a1 + 32), xmmword_2229D2A10);
  *(a1 + 32) = v3;
  if (v3.i64[0] >= 0x34uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 26;
  }
}

BOOL nlv4_inference_orchestrator::trees::UsoGraphBuilder::tryReplaceInsertionPointOnly(uint64_t a1, uint64_t a2, siri::ontology::UsoGraph *a3, uint64_t *a4, uint64_t a5, char **a6, uint64_t a7)
{
  v51 = *MEMORY[0x277D85DE8];
  v13 = *(a2 + 32);
  v14 = *(*(a2 + 8) + 8 * (v13 / 0x1A));
  if (*(a7 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v49, *a7, *(a7 + 8));
  }

  else
  {
    v49 = *a7;
  }

  v15 = v14 - 3952 * (v13 / 0x1A) + 152 * v13;
  v16 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  v18 = *(v15 + 71);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v15 + 56);
  }

  if (size != v18)
  {
    v22 = 1;
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    operator delete(v49.__r_.__value_.__l.__data_);
    if (v22)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v49;
  }

  else
  {
    v20 = v49.__r_.__value_.__r.__words[0];
  }

  if (v19 >= 0)
  {
    v21 = (v15 + 48);
  }

  else
  {
    v21 = *(v15 + 48);
  }

  v22 = memcmp(v20, v21, size) != 0;
  if (v16 < 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  if (v22)
  {
LABEL_18:
    v23 = 0;
    goto LABEL_61;
  }

LABEL_21:
  (*(**(v15 + 144) + 48))(&v49);
  std::operator+<char>();
  v24 = std::string::append(&v50, "\n");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v48 = v24->__r_.__value_.__r.__words[2];
  *v47 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  v26 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    v27 = v47;
    if (v48 < 0)
    {
      v27 = v47[0];
    }

    LODWORD(v50.__r_.__value_.__l.__data_) = 136315138;
    *(v50.__r_.__value_.__r.__words + 4) = v27;
    _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_DEBUG, "%s", &v50, 0xCu);
  }

  v28 = a4[1];
  v44[0] = *a4;
  v44[1] = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  nlv4_inference_orchestrator::trees::SpanUsoInserter::findSpanEntity(a7, v15, a5, &v49, v44, a6, &v45);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v46 != 1)
  {
    goto LABEL_56;
  }

  siri::ontology::UsoGraph::getSuccessors(&v50, *(*(v45 + 11) + 8), *(v45 + 11));
  v29 = v50.__r_.__value_.__l.__size_ - v50.__r_.__value_.__r.__words[0];
  v23 = v50.__r_.__value_.__l.__size_ - v50.__r_.__value_.__r.__words[0] == 8;
  if (v50.__r_.__value_.__r.__words[0])
  {
    v50.__r_.__value_.__l.__size_ = v50.__r_.__value_.__r.__words[0];
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (v29 != 8)
  {
    if (v46)
    {
LABEL_55:
      std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v45);
      goto LABEL_57;
    }

LABEL_56:
    v23 = 0;
    goto LABEL_57;
  }

  if ((v46 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  siri::ontology::UsoGraph::getSuccessors(&v50, *(*(v45 + 11) + 8), *(v45 + 11));
  v30 = *v50.__r_.__value_.__l.__data_;
  v50.__r_.__value_.__l.__size_ = v50.__r_.__value_.__r.__words[0];
  operator delete(v50.__r_.__value_.__l.__data_);
  siri::ontology::UsoGraph::getSuccessors(&v50, *(v30 + 8), v30);
  v32 = v50.__r_.__value_.__l.__size_;
  v31 = v50.__r_.__value_.__r.__words[0];
  if (v50.__r_.__value_.__r.__words[0] != v50.__r_.__value_.__l.__size_)
  {
    while (1)
    {
      if ((v46 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v33 = *v31;
      v34 = siri::ontology::UsoGraph::deepCopyToGraph(v45, *v31, a3);
      siri::ontology::UsoGraph::getPredecessorsWithEdges(__p, v33->var1, v33);
      v35 = __p[0];
      v36 = *(__p[0] + 1);
      if ((*(v36 + 55) & 0x80000000) == 0)
      {
        break;
      }

      std::string::__init_copy_ctor_external(&v43, *(v36 + 32), *(v36 + 40));
      v35 = __p[0];
      if (__p[0])
      {
        goto LABEL_41;
      }

LABEL_42:
      v37 = *(v15 + 144);
      v38 = a4[1];
      v41[0] = *a4;
      v41[1] = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      nlv4_inference_orchestrator::trees::UsoGraphBuilder::tryAttachSubtreeViaEdgeToNode(v35, v34, &v43, v37, v41);
      if (v38)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v38);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (++v31 == v32)
      {
        v31 = v50.__r_.__value_.__r.__words[0];
        goto LABEL_50;
      }
    }

    v43 = *(v36 + 32);
LABEL_41:
    __p[1] = v35;
    operator delete(v35);
    goto LABEL_42;
  }

LABEL_50:
  if (v31)
  {
    v50.__r_.__value_.__l.__size_ = v31;
    operator delete(v31);
  }

  std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::pop_front(a2);
  if (v46)
  {
    goto LABEL_55;
  }

  v23 = 1;
LABEL_57:
  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

LABEL_61:
  v39 = *MEMORY[0x277D85DE8];
  return v23;
}

void sub_222999C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a25 == 1)
  {
    std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a24);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

BOOL nlv4_inference_orchestrator::trees::UsoGraphBuilder::reinsertUsoEntity(uint64_t a1, uint64_t a2, siri::ontology::UsoGraph *a3, uint64_t *a4, uint64_t a5, char **a6)
{
  v33 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(v25, "usoEntityInsertionPoint");
  std::string::basic_string[abi:ne200100]<0>(buf, "common_Time");
  std::string::basic_string[abi:ne200100]<0>(v31, "common_Time12HourClock");
  std::string::basic_string[abi:ne200100]<0>(v32, "common_Time24HourClock");
  std::unordered_set<std::string>::unordered_set(v27, buf, 3);
  for (i = 0; i != -72; i -= 24)
  {
    if (v32[i + 23] < 0)
    {
      operator delete(*&v32[i]);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, ".");
  v13 = a4[1];
  v24[0] = *a4;
  v24[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = nlv4_inference_orchestrator::trees::UsoGraphBuilder::tryReplaceInsertionPointIncludingParent(a1, a2, a3, v24, a5, a6, v25);
  v15 = v14;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    v16 = 1;
    v17 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_20;
    }

    *buf = 0;
    v18 = "Replaced the whole reinsertion subtree including the parent.";
    goto LABEL_19;
  }

  v19 = a4[1];
  v23[0] = *a4;
  v23[1] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = nlv4_inference_orchestrator::trees::UsoGraphBuilder::tryReplaceInsertionPointOnly(v14, a2, a3, v23, a5, a6, v25);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v16)
  {
    v16 = 1;
    v17 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v18 = "Replaced only the reinsertion point itself.";
LABEL_19:
      _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_DEBUG, v18, buf, 2u);
    }
  }

LABEL_20:
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v27[2]);
  v20 = v27[0];
  v27[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

void sub_222999F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  nlv4_inference_orchestrator::trees::SpanUsoInserter::~SpanUsoInserter(&__p);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::trees::SpanUsoInserter::~SpanUsoInserter(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 3));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void nlv4_inference_orchestrator::trees::UsoGraphBuilder::buildUsoGraphFromTreeNode()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 1;
  v1 = 0;
  operator new();
}

void sub_22299A69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint8_t buf, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, ...)
{
  va_start(va, a35);
  std::ostringstream::~ostringstream(&buf, MEMORY[0x277D82828]);
  MEMORY[0x223DC4C10](va);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](v35);
  _Unwind_Resume(a1);
}

void sub_22299A704(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  snlp::ssu::matcher::SSUAppInfo::~SSUAppInfo(&a19);
  std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::~deque[abi:ne200100](v30 - 160);
  if (a2 == 2)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = (*(*v33 + 16))(v33);
      LODWORD(a29) = 136315138;
      *(&a29 + 4) = v35;
      _os_log_impl(&dword_22284A000, v34, OS_LOG_TYPE_DEBUG, " Warning: Could not generate USO graph: %s", &a29, 0xCu);
    }
  }

  else
  {
    if (a2 != 1)
    {
      JUMPOUT(0x22299A6DCLL);
    }

    v36 = __cxa_begin_catch(a1);
    v37 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = (*(*v36 + 16))(v36);
      LODWORD(a29) = 136315138;
      *(&a29 + 4) = v38;
      _os_log_impl(&dword_22284A000, v37, OS_LOG_TYPE_DEBUG, " Warning: Could not generate USO graph: %s", &a29, 0xCu);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x22299A484);
}

void sub_22299A754(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, __int128 a29)
{
  if (v29)
  {
    JUMPOUT(0x22299A764);
  }

  std::deque<std::pair<nlv4_inference_orchestrator::trees::TreeNode,unsigned int>>::~deque[abi:ne200100](v30 - 160);
  if (a2 == 2)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = (*(*v33 + 16))(v33);
      LODWORD(a29) = 136315138;
      *(&a29 + 4) = v35;
      _os_log_impl(&dword_22284A000, v34, OS_LOG_TYPE_DEBUG, " Warning: Could not generate USO graph: %s", &a29, 0xCu);
    }
  }

  else
  {
    if (a2 != 1)
    {
      JUMPOUT(0x22299A6DCLL);
    }

    v36 = __cxa_begin_catch(a1);
    v37 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = (*(*v36 + 16))(v36);
      LODWORD(a29) = 136315138;
      *(&a29 + 4) = v38;
      _os_log_impl(&dword_22284A000, v37, OS_LOG_TYPE_DEBUG, " Warning: Could not generate USO graph: %s", &a29, 0xCu);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x22299A484);
}

void nlv4_inference_orchestrator::trees::UsoGraphBuilder::addEntityNode(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = (*(a4[1] + 8 * (a4[4] / 0x1AuLL)) - 3952 * (a4[4] / 0x1AuLL) + 152 * a4[4]);
  if ((*(a3 + 32) - 5) > 1)
  {
    EntityNode = siri::ontology::UsoGraph::createEntityNode();
    v22 = v5[18];
    siri::ontology::UsoGraphNode::setSuccessor();
    v23 = v5[11];
    for (i = v5[12]; v23 != i; v23 = (v23 + 144))
    {
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v25, v23);
      v35 = EntityNode;
      std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::emplace_back<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoEntityNode *>>(a4, &v25);
      v36[0] = &v31;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v36);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    OperatorNode = siri::ontology::UsoGraph::createOperatorNode();
    v7 = v5[18];
    siri::ontology::UsoGraphNode::setSuccessor();
    v8 = v5[11];
    for (j = v5[12]; v8 != j; v8 = (v8 + 144))
    {
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v25, v8);
      v10 = *(a4 + 1);
      v11 = a4[1];
      v12 = a4[2] == v11;
      v13 = 26 * ((a4[2] - v11) >> 3) - 1;
      v35 = OperatorNode;
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      v15 = a4[5] + a4[4];
      if (v14 == v15)
      {
        std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::__add_back_capacity(a4);
        v11 = a4[1];
        v15 = a4[5] + a4[4];
      }

      v16 = *(v11 + 8 * (v15 / 0x1A)) - 3952 * (v15 / 0x1A) + 152 * v15;
      v17 = *&v25.__r_.__value_.__l.__data_;
      *(v16 + 16) = *(&v25.__r_.__value_.__l + 2);
      *v16 = v17;
      memset(&v25, 0, sizeof(v25));
      v18 = v26;
      *(v16 + 40) = v27;
      *(v16 + 24) = v18;
      v27 = 0;
      v26 = 0uLL;
      v19 = __p;
      *(v16 + 64) = v29;
      *(v16 + 48) = v19;
      v29 = 0;
      __p = 0uLL;
      *(v16 + 72) = v30;
      *(v16 + 96) = 0;
      *(v16 + 104) = 0;
      *(v16 + 88) = 0;
      *(v16 + 88) = v31;
      *(v16 + 104) = v32;
      v31 = 0uLL;
      v32 = 0;
      v20 = v34;
      *(v16 + 112) = v33;
      *(v16 + 128) = v20;
      *(v16 + 144) = v35;
      ++a4[5];
      v36[0] = &v31;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v36);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26);
      }

      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_22299AB58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::trees::UsoGraphBuilder::addTaskNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v7 = a6[4];
  v8 = *(a6[1] + 8 * (v7 / 0x1A));
  v9 = *a5;
  siri::ontology::UsoVocabManager::getVerbName();
  if ((v10 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    v28 = std::string::append(&v41, " not found in ontology.");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v30);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v11 = (v8 - 3952 * (v7 / 0x1A) + 152 * v7);
  TaskNode = siri::ontology::UsoGraph::createTaskNode();
  v13 = v11[18];
  siri::ontology::UsoGraphNode::setSuccessor();
  v14 = v11[11];
  for (i = v11[12]; v14 != i; v14 = (v14 + 144))
  {
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&v30, v14);
    v16 = *(a6 + 1);
    v17 = a6[1];
    v18 = a6[2] == v17;
    v19 = 26 * ((a6[2] - v17) >> 3) - 1;
    v40 = TaskNode;
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v19;
    }

    v21 = a6[5] + a6[4];
    if (v20 == v21)
    {
      std::deque<std::tuple<nlv4_inference_orchestrator::trees::TreeNode,siri::ontology::UsoGraphNode *>>::__add_back_capacity(a6);
      v17 = a6[1];
      v21 = a6[5] + a6[4];
    }

    v22 = *(v17 + 8 * (v21 / 0x1A)) - 3952 * (v21 / 0x1A) + 152 * v21;
    v23 = *&v30.__r_.__value_.__l.__data_;
    *(v22 + 16) = *(&v30.__r_.__value_.__l + 2);
    *v22 = v23;
    memset(&v30, 0, sizeof(v30));
    v24 = v31;
    *(v22 + 40) = v32;
    *(v22 + 24) = v24;
    v32 = 0;
    v31 = 0uLL;
    v25 = __p;
    *(v22 + 64) = v34;
    *(v22 + 48) = v25;
    v34 = 0;
    __p = 0uLL;
    *(v22 + 72) = v35;
    *(v22 + 96) = 0;
    *(v22 + 104) = 0;
    *(v22 + 88) = 0;
    *(v22 + 88) = v36;
    *(v22 + 104) = v37;
    v36 = 0uLL;
    v37 = 0;
    v26 = v39;
    *(v22 + 112) = v38;
    *(v22 + 128) = v26;
    *(v22 + 144) = v40;
    ++a6[5];
    v41.__r_.__value_.__r.__words[0] = &v36;
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v41);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }
}