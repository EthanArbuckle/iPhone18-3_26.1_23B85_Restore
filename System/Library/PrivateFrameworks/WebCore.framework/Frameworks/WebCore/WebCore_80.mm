void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<webrtc::SenderOptions *&,webrtc::SenderOptions *&>(uint64_t a1, __int128 *a2)
{
  v3 = *a1;
  v4 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v9 = *(a1 + 72);
  v10 = *(a1 + 88);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *(a1 + 96);
  webrtc::SenderOptions::operator=(a1, a2);
  webrtc::SenderOptions::operator=(a2, &v3);
  webrtc::SenderOptions::~SenderOptions(&v3);
}

void std::__sort3[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::ValidMediaSessionOptions(webrtc::MediaSessionOptions const&)::$_1 &,webrtc::SenderOptions *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (!v13)
  {
    if (v8 >= v11)
    {
      goto LABEL_18;
    }

LABEL_31:
    v19 = *(a3 + 23);
    if (v19 >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    if (v19 >= 0)
    {
      v21 = *(a3 + 23);
    }

    else
    {
      v21 = *(a3 + 8);
    }

    if (v8 >= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v8;
    }

    v23 = memcmp(v20, v7, v22);
    if (v23)
    {
      if ((v23 & 0x80000000) == 0)
      {
LABEL_42:
        v42 = *a1;
        v43 = *(a1 + 16);
        *a1 = 0;
        *(a1 + 8) = 0;
        v44 = *(a1 + 24);
        v45 = *(a1 + 40);
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = 0;
        *(a1 + 40) = 0;
        v46 = *(a1 + 48);
        v47 = *(a1 + 64);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        v48 = *(a1 + 72);
        v49 = *(a1 + 88);
        *(a1 + 64) = 0;
        *(a1 + 72) = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        v50 = *(a1 + 96);
        webrtc::SenderOptions::operator=(a1, a2);
        webrtc::SenderOptions::operator=(a2, &v42);
        webrtc::SenderOptions::~SenderOptions(&v42);
        v24 = *(a3 + 23);
        if (v24 >= 0)
        {
          v25 = a3;
        }

        else
        {
          v25 = *a3;
        }

        if (v24 >= 0)
        {
          v26 = *(a3 + 23);
        }

        else
        {
          v26 = *(a3 + 8);
        }

        v27 = *(a2 + 23);
        if (v27 >= 0)
        {
          v28 = a2;
        }

        else
        {
          v28 = *a2;
        }

        if (v27 >= 0)
        {
          v29 = *(a2 + 23);
        }

        else
        {
          v29 = *(a2 + 8);
        }

        if (v29 >= v26)
        {
          v30 = v26;
        }

        else
        {
          v30 = v29;
        }

        v31 = memcmp(v25, v28, v30);
        if (v31)
        {
          if ((v31 & 0x80000000) == 0)
          {
            return;
          }
        }

        else if (v26 >= v29)
        {
          return;
        }

        v42 = *a2;
        v43 = *(a2 + 16);
        *a2 = 0;
        *(a2 + 8) = 0;
        v44 = *(a2 + 24);
        v45 = *(a2 + 40);
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        *(a2 + 40) = 0;
        v46 = *(a2 + 48);
        v47 = *(a2 + 64);
        *(a2 + 48) = 0;
        *(a2 + 56) = 0;
        v48 = *(a2 + 72);
        v49 = *(a2 + 88);
        *(a2 + 64) = 0;
        *(a2 + 72) = 0;
        *(a2 + 80) = 0;
        *(a2 + 88) = 0;
        v50 = *(a2 + 96);
        v40 = a2;
LABEL_83:
        webrtc::SenderOptions::operator=(v40, a3);
        v41 = a3;
LABEL_86:
        webrtc::SenderOptions::operator=(v41, &v42);
        webrtc::SenderOptions::~SenderOptions(&v42);
        return;
      }
    }

    else if (v21 >= v8)
    {
      goto LABEL_42;
    }

    v42 = *a1;
    v43 = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    v44 = *(a1 + 24);
    v45 = *(a1 + 40);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v46 = *(a1 + 48);
    v47 = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v48 = *(a1 + 72);
    v49 = *(a1 + 88);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    v50 = *(a1 + 96);
    v40 = a1;
    goto LABEL_83;
  }

  if (v13 < 0)
  {
    goto LABEL_31;
  }

LABEL_18:
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = *(a3 + 8);
  }

  if (v8 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = memcmp(v15, v7, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v16 >= v8)
  {
    return;
  }

  v42 = *a2;
  v43 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v44 = *(a2 + 24);
  v45 = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v46 = *(a2 + 48);
  v47 = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v48 = *(a2 + 72);
  v49 = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v50 = *(a2 + 96);
  webrtc::SenderOptions::operator=(a2, a3);
  webrtc::SenderOptions::operator=(a3, &v42);
  webrtc::SenderOptions::~SenderOptions(&v42);
  v32 = *(a2 + 23);
  if (v32 >= 0)
  {
    v33 = a2;
  }

  else
  {
    v33 = *a2;
  }

  if (v32 >= 0)
  {
    v34 = *(a2 + 23);
  }

  else
  {
    v34 = *(a2 + 8);
  }

  v35 = *(a1 + 23);
  if (v35 >= 0)
  {
    v36 = a1;
  }

  else
  {
    v36 = *a1;
  }

  if (v35 >= 0)
  {
    v37 = *(a1 + 23);
  }

  else
  {
    v37 = *(a1 + 8);
  }

  if (v37 >= v34)
  {
    v38 = v34;
  }

  else
  {
    v38 = v37;
  }

  v39 = memcmp(v33, v36, v38);
  if (v39)
  {
    if (v39 < 0)
    {
      goto LABEL_85;
    }
  }

  else if (v34 < v37)
  {
LABEL_85:
    v42 = *a1;
    v43 = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    v44 = *(a1 + 24);
    v45 = *(a1 + 40);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v46 = *(a1 + 48);
    v47 = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v48 = *(a1 + 72);
    v49 = *(a1 + 88);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    v50 = *(a1 + 96);
    webrtc::SenderOptions::operator=(a1, a2);
    v41 = a2;
    goto LABEL_86;
  }
}

void std::__sort5[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::ValidMediaSessionOptions(webrtc::MediaSessionOptions const&)::$_1 &,webrtc::SenderOptions *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 23);
  if (v10 >= 0)
  {
    v11 = a4;
  }

  else
  {
    v11 = *a4;
  }

  if (v10 >= 0)
  {
    v12 = *(a4 + 23);
  }

  else
  {
    v12 = *(a4 + 8);
  }

  v13 = *(a3 + 23);
  if (v13 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v13 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v12 >= v15)
  {
    goto LABEL_57;
  }

  v66 = *a3;
  v67 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  v68 = *(a3 + 24);
  v69 = *(a3 + 40);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v70 = *(a3 + 48);
  v71 = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v72 = *(a3 + 72);
  v73 = *(a3 + 88);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v74 = *(a3 + 96);
  webrtc::SenderOptions::operator=(a3, a4);
  webrtc::SenderOptions::operator=(a4, &v66);
  webrtc::SenderOptions::~SenderOptions(&v66);
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

  v21 = *(a2 + 23);
  if (v21 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  if (v21 >= 0)
  {
    v23 = *(a2 + 23);
  }

  else
  {
    v23 = *(a2 + 8);
  }

  if (v23 >= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  v25 = memcmp(v19, v22, v24);
  if (v25)
  {
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else if (v20 >= v23)
  {
    goto LABEL_57;
  }

  v66 = *a2;
  v67 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v68 = *(a2 + 24);
  v69 = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v70 = *(a2 + 48);
  v71 = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v72 = *(a2 + 72);
  v73 = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v74 = *(a2 + 96);
  webrtc::SenderOptions::operator=(a2, a3);
  webrtc::SenderOptions::operator=(a3, &v66);
  webrtc::SenderOptions::~SenderOptions(&v66);
  v26 = *(a2 + 23);
  if (v26 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v26 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  v29 = *(a1 + 23);
  if (v29 >= 0)
  {
    v30 = a1;
  }

  else
  {
    v30 = *a1;
  }

  if (v29 >= 0)
  {
    v31 = *(a1 + 23);
  }

  else
  {
    v31 = *(a1 + 8);
  }

  if (v31 >= v28)
  {
    v32 = v28;
  }

  else
  {
    v32 = v31;
  }

  v33 = memcmp(v27, v30, v32);
  if (v33)
  {
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (v28 < v31)
  {
LABEL_56:
    v66 = *a1;
    v67 = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    v68 = *(a1 + 24);
    v69 = *(a1 + 40);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v70 = *(a1 + 48);
    v71 = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v72 = *(a1 + 72);
    v73 = *(a1 + 88);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    v74 = *(a1 + 96);
    webrtc::SenderOptions::operator=(a1, a2);
    webrtc::SenderOptions::operator=(a2, &v66);
    webrtc::SenderOptions::~SenderOptions(&v66);
  }

LABEL_57:
  v34 = *(a5 + 23);
  if (v34 >= 0)
  {
    v35 = a5;
  }

  else
  {
    v35 = *a5;
  }

  if (v34 >= 0)
  {
    v36 = *(a5 + 23);
  }

  else
  {
    v36 = *(a5 + 8);
  }

  v37 = *(a4 + 23);
  if (v37 >= 0)
  {
    v38 = a4;
  }

  else
  {
    v38 = *a4;
  }

  if (v37 >= 0)
  {
    v39 = *(a4 + 23);
  }

  else
  {
    v39 = *(a4 + 8);
  }

  if (v39 >= v36)
  {
    v40 = v36;
  }

  else
  {
    v40 = v39;
  }

  v41 = memcmp(v35, v38, v40);
  if (v41)
  {
    if ((v41 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v36 >= v39)
  {
    return;
  }

  v66 = *a4;
  v67 = *(a4 + 16);
  *a4 = 0;
  *(a4 + 8) = 0;
  v68 = *(a4 + 24);
  v69 = *(a4 + 40);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  v70 = *(a4 + 48);
  v71 = *(a4 + 64);
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  v72 = *(a4 + 72);
  v73 = *(a4 + 88);
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  v74 = *(a4 + 96);
  webrtc::SenderOptions::operator=(a4, a5);
  webrtc::SenderOptions::operator=(a5, &v66);
  webrtc::SenderOptions::~SenderOptions(&v66);
  v42 = *(a4 + 23);
  if (v42 >= 0)
  {
    v43 = a4;
  }

  else
  {
    v43 = *a4;
  }

  if (v42 >= 0)
  {
    v44 = *(a4 + 23);
  }

  else
  {
    v44 = *(a4 + 8);
  }

  v45 = *(a3 + 23);
  if (v45 >= 0)
  {
    v46 = a3;
  }

  else
  {
    v46 = *a3;
  }

  if (v45 >= 0)
  {
    v47 = *(a3 + 23);
  }

  else
  {
    v47 = *(a3 + 8);
  }

  if (v47 >= v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = v47;
  }

  v49 = memcmp(v43, v46, v48);
  if (v49)
  {
    if ((v49 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v44 >= v47)
  {
    return;
  }

  v66 = *a3;
  v67 = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  v68 = *(a3 + 24);
  v69 = *(a3 + 40);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  v70 = *(a3 + 48);
  v71 = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  v72 = *(a3 + 72);
  v73 = *(a3 + 88);
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v74 = *(a3 + 96);
  webrtc::SenderOptions::operator=(a3, a4);
  webrtc::SenderOptions::operator=(a4, &v66);
  webrtc::SenderOptions::~SenderOptions(&v66);
  v50 = *(a3 + 23);
  if (v50 >= 0)
  {
    v51 = a3;
  }

  else
  {
    v51 = *a3;
  }

  if (v50 >= 0)
  {
    v52 = *(a3 + 23);
  }

  else
  {
    v52 = *(a3 + 8);
  }

  v53 = *(a2 + 23);
  if (v53 >= 0)
  {
    v54 = a2;
  }

  else
  {
    v54 = *a2;
  }

  if (v53 >= 0)
  {
    v55 = *(a2 + 23);
  }

  else
  {
    v55 = *(a2 + 8);
  }

  if (v55 >= v52)
  {
    v56 = v52;
  }

  else
  {
    v56 = v55;
  }

  v57 = memcmp(v51, v54, v56);
  if (v57)
  {
    if ((v57 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v52 >= v55)
  {
    return;
  }

  v66 = *a2;
  v67 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v68 = *(a2 + 24);
  v69 = *(a2 + 40);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v70 = *(a2 + 48);
  v71 = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v72 = *(a2 + 72);
  v73 = *(a2 + 88);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v74 = *(a2 + 96);
  webrtc::SenderOptions::operator=(a2, a3);
  webrtc::SenderOptions::operator=(a3, &v66);
  webrtc::SenderOptions::~SenderOptions(&v66);
  v58 = *(a2 + 23);
  if (v58 >= 0)
  {
    v59 = a2;
  }

  else
  {
    v59 = *a2;
  }

  if (v58 >= 0)
  {
    v60 = *(a2 + 23);
  }

  else
  {
    v60 = *(a2 + 8);
  }

  v61 = *(a1 + 23);
  if (v61 >= 0)
  {
    v62 = a1;
  }

  else
  {
    v62 = *a1;
  }

  if (v61 >= 0)
  {
    v63 = *(a1 + 23);
  }

  else
  {
    v63 = *(a1 + 8);
  }

  if (v63 >= v60)
  {
    v64 = v60;
  }

  else
  {
    v64 = v63;
  }

  v65 = memcmp(v59, v62, v64);
  if (v65)
  {
    if ((v65 & 0x80000000) == 0)
    {
      return;
    }
  }

  else if (v60 >= v63)
  {
    return;
  }

  v66 = *a1;
  v67 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  v68 = *(a1 + 24);
  v69 = *(a1 + 40);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v70 = *(a1 + 48);
  v71 = *(a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v72 = *(a1 + 72);
  v73 = *(a1 + 88);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v74 = *(a1 + 96);
  webrtc::SenderOptions::operator=(a1, a2);
  webrtc::SenderOptions::operator=(a2, &v66);
  webrtc::SenderOptions::~SenderOptions(&v66);
}

BOOL std::__insertion_sort_incomplete[abi:sn200100]<std::_ClassicAlgPolicy,webrtc::anonymous namespace::ValidMediaSessionOptions(webrtc::MediaSessionOptions const&)::$_1 &,webrtc::SenderOptions *>(uint64_t a1, uint64_t a2)
{
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        return 1;
      case 4:
        v34 = (a1 + 104);
        v35 = (a1 + 208);
        v38 = *(a2 - 104);
        v37 = a2 - 104;
        v36 = v38;
        v39 = *(v37 + 23);
        if (v39 >= 0)
        {
          v40 = v37;
        }

        else
        {
          v40 = v36;
        }

        if (v39 >= 0)
        {
          v41 = *(v37 + 23);
        }

        else
        {
          v41 = *(v37 + 8);
        }

        v42 = *(a1 + 231);
        if (v42 >= 0)
        {
          v43 = (a1 + 208);
        }

        else
        {
          v43 = *(a1 + 208);
        }

        if (v42 >= 0)
        {
          v44 = *(a1 + 231);
        }

        else
        {
          v44 = *(a1 + 216);
        }

        if (v44 >= v41)
        {
          v45 = v41;
        }

        else
        {
          v45 = v44;
        }

        v46 = memcmp(v40, v43, v45);
        if (v46)
        {
          if ((v46 & 0x80000000) == 0)
          {
            return 1;
          }
        }

        else if (v41 >= v44)
        {
          return 1;
        }

        v65 = *v35;
        v66 = *(a1 + 224);
        *(a1 + 216) = 0;
        *(a1 + 224) = 0;
        *v35 = 0;
        v67 = *(a1 + 232);
        v68 = *(a1 + 248);
        *(a1 + 232) = 0;
        *(a1 + 240) = 0;
        v69 = *(a1 + 256);
        v70 = *(a1 + 272);
        *(a1 + 264) = 0;
        *(a1 + 272) = 0;
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
        v71 = *(a1 + 280);
        v72 = *(a1 + 296);
        *(a1 + 280) = 0;
        *(a1 + 288) = 0;
        *(a1 + 296) = 0;
        v73 = *(a1 + 304);
        webrtc::SenderOptions::operator=(a1 + 208, v37);
        webrtc::SenderOptions::operator=(v37, &v65);
        webrtc::SenderOptions::~SenderOptions(&v65);
        v47 = *(a1 + 231);
        if (v47 >= 0)
        {
          v48 = (a1 + 208);
        }

        else
        {
          v48 = *(a1 + 208);
        }

        if (v47 >= 0)
        {
          v49 = *(a1 + 231);
        }

        else
        {
          v49 = *(a1 + 216);
        }

        v50 = *(a1 + 127);
        if (v50 >= 0)
        {
          v51 = (a1 + 104);
        }

        else
        {
          v51 = *(a1 + 104);
        }

        if (v50 >= 0)
        {
          v52 = *(a1 + 127);
        }

        else
        {
          v52 = *(a1 + 112);
        }

        if (v52 >= v49)
        {
          v53 = v49;
        }

        else
        {
          v53 = v52;
        }

        v54 = memcmp(v48, v51, v53);
        if (v54)
        {
          if ((v54 & 0x80000000) == 0)
          {
            return 1;
          }
        }

        else if (v49 >= v52)
        {
          return 1;
        }

        v65 = *v34;
        v66 = *(a1 + 120);
        *(a1 + 112) = 0;
        *(a1 + 120) = 0;
        *v34 = 0;
        v67 = *(a1 + 128);
        v68 = *(a1 + 144);
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        v69 = *(a1 + 152);
        v70 = *(a1 + 168);
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        v71 = *(a1 + 176);
        v72 = *(a1 + 192);
        *(a1 + 176) = 0;
        *(a1 + 184) = 0;
        *(a1 + 192) = 0;
        v73 = *(a1 + 200);
        webrtc::SenderOptions::operator=(a1 + 104, (a1 + 208));
        webrtc::SenderOptions::operator=(a1 + 208, &v65);
        webrtc::SenderOptions::~SenderOptions(&v65);
        v56 = *(a1 + 127);
        if (v56 >= 0)
        {
          v57 = (a1 + 104);
        }

        else
        {
          v57 = *(a1 + 104);
        }

        if (v56 >= 0)
        {
          v58 = *(a1 + 127);
        }

        else
        {
          v58 = *(a1 + 112);
        }

        v59 = *(a1 + 23);
        if (v59 >= 0)
        {
          v60 = a1;
        }

        else
        {
          v60 = *a1;
        }

        if (v59 >= 0)
        {
          v61 = *(a1 + 23);
        }

        else
        {
          v61 = *(a1 + 8);
        }

        if (v61 >= v58)
        {
          v62 = v58;
        }

        else
        {
          v62 = v61;
        }

        v63 = memcmp(v57, v60, v62);
        if (v63)
        {
          if ((v63 & 0x80000000) == 0)
          {
            return 1;
          }
        }

        else if (v58 >= v61)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:sn200100]<webrtc::SenderOptions *&,webrtc::SenderOptions *&>(a1, (a1 + 104));
        return 1;
      case 5:
        return 1;
    }

LABEL_27:
    v14 = a1 + 208;
    v15 = a1 + 312;
    if (a1 + 312 == a2)
    {
      return 1;
    }

    v16 = 0;
    v17 = 0;
    v64 = a2;
    while (1)
    {
      v18 = *(v15 + 23);
      if (v18 >= 0)
      {
        v19 = v15;
      }

      else
      {
        v19 = *v15;
      }

      if (v18 >= 0)
      {
        v20 = *(v15 + 23);
      }

      else
      {
        v20 = *(v15 + 8);
      }

      v21 = *(v14 + 23);
      if (v21 >= 0)
      {
        v22 = v14;
      }

      else
      {
        v22 = *v14;
      }

      if (v21 >= 0)
      {
        v23 = *(v14 + 23);
      }

      else
      {
        v23 = *(v14 + 8);
      }

      if (v23 >= v20)
      {
        v24 = v20;
      }

      else
      {
        v24 = v23;
      }

      v25 = memcmp(v19, v22, v24);
      if (v25)
      {
        if (v25 < 0)
        {
          goto LABEL_49;
        }

LABEL_29:
        v14 = v15;
        v16 += 104;
        v15 += 104;
        if (v15 == v64)
        {
          return 1;
        }
      }

      else
      {
        if (v20 >= v23)
        {
          goto LABEL_29;
        }

LABEL_49:
        v65 = *v15;
        v66 = *(v15 + 16);
        *v15 = 0;
        *(v15 + 8) = 0;
        v67 = *(v15 + 24);
        v68 = *(v15 + 40);
        *(v15 + 16) = 0;
        *(v15 + 24) = 0;
        *(v15 + 32) = 0;
        *(v15 + 40) = 0;
        v69 = *(v15 + 48);
        v70 = *(v15 + 64);
        *(v15 + 48) = 0;
        *(v15 + 56) = 0;
        v71 = *(v15 + 72);
        v72 = *(v15 + 88);
        *(v15 + 64) = 0;
        *(v15 + 72) = 0;
        *(v15 + 80) = 0;
        *(v15 + 88) = 0;
        v73 = *(v15 + 96);
        webrtc::SenderOptions::operator=(v15, v14);
        v26 = v16;
        do
        {
          if (v66 >= 0)
          {
            v27 = &v65;
          }

          else
          {
            v27 = v65;
          }

          if (v66 >= 0)
          {
            v28 = HIBYTE(v66);
          }

          else
          {
            v28 = *(&v65 + 1);
          }

          v29 = *(a1 + v26 + 127);
          if (v29 >= 0)
          {
            v30 = (a1 + v26 + 104);
          }

          else
          {
            v30 = *(a1 + v26 + 104);
          }

          if (v29 >= 0)
          {
            v31 = *(a1 + v26 + 127);
          }

          else
          {
            v31 = *(a1 + v26 + 112);
          }

          if (v31 >= v28)
          {
            v32 = v28;
          }

          else
          {
            v32 = v31;
          }

          v33 = memcmp(v27, v30, v32);
          if (v33)
          {
            if ((v33 & 0x80000000) == 0)
            {
              v14 = a1 + v26 + 208;
              goto LABEL_71;
            }
          }

          else if (v28 >= v31)
          {
            goto LABEL_71;
          }

          v14 -= 104;
          webrtc::SenderOptions::operator=(a1 + v26 + 208, (a1 + v26 + 104));
          v26 -= 104;
        }

        while (v26 != -208);
        v14 = a1;
LABEL_71:
        webrtc::SenderOptions::operator=(v14, &v65);
        if (++v17 == 8)
        {
          webrtc::SenderOptions::~SenderOptions(&v65);
          return v15 + 104 == v64;
        }

        webrtc::SenderOptions::~SenderOptions(&v65);
        v14 = v15;
        v16 += 104;
        v15 += 104;
        if (v15 == v64)
        {
          return 1;
        }
      }
    }
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_27;
  }

  v5 = (a2 - 104);
  v6 = *(a2 - 81);
  if (v6 >= 0)
  {
    v7 = (a2 - 104);
  }

  else
  {
    v7 = *(a2 - 104);
  }

  if (v6 >= 0)
  {
    v8 = *(a2 - 81);
  }

  else
  {
    v8 = *(a2 - 96);
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (v13)
  {
    if (v13 < 0)
    {
      goto LABEL_93;
    }
  }

  else if (v8 < v11)
  {
LABEL_93:
    v65 = *a1;
    v66 = *(a1 + 16);
    *a1 = 0;
    *(a1 + 8) = 0;
    v67 = *(a1 + 24);
    v68 = *(a1 + 40);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    v69 = *(a1 + 48);
    v70 = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    v71 = *(a1 + 72);
    v72 = *(a1 + 88);
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    v73 = *(a1 + 96);
    webrtc::SenderOptions::operator=(a1, v5);
    webrtc::SenderOptions::operator=(v5, &v65);
    webrtc::SenderOptions::~SenderOptions(&v65);
  }

  return 1;
}

webrtc::MediaSessionOptions *webrtc::MediaSessionOptions::MediaSessionOptions(webrtc::MediaSessionOptions *this, const webrtc::MediaSessionOptions *a2)
{
  v4 = *a2;
  *(this + 4) = *(a2 + 4);
  *this = v4;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v5;
  }

  v6 = *(a2 + 8);
  *(this + 36) = *(a2 + 36);
  *(this + 8) = v6;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  v8 = *(a2 + 5);
  v7 = *(a2 + 6);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  if (v10 != v9)
  {
    if (0xF0F0F0F0F0F0F0F1 * ((v10 - v9) >> 3) < 0x1E1E1E1E1E1E1E2)
    {
      operator new();
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  std::vector<webrtc::IceParameters>::__init_with_size[abi:sn200100]<webrtc::IceParameters*,webrtc::IceParameters*>(this + 88, *(a2 + 11), *(a2 + 12), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 12) - *(a2 + 11)) >> 3));
  *(this + 112) = *(a2 + 112);
  return this;
}

void **absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::WebRtcSessionDescriptionFactory::WebRtcSessionDescriptionFactory(webrtc::ConnectionContext *,webrtc::SdpStateProvider const*,std::string const&,BOOL,std::unique_ptr<webrtc::RTCCertificateGeneratorInterface>,webrtc::scoped_refptr<webrtc::RTCCertificate>,std::function<void ()(webrtc::scoped_refptr<webrtc::RTCCertificate> const&)>,webrtc::CodecLookupHelper *,webrtc::FieldTrialsView const&)::$_0 &&,webrtc::scoped_refptr<webrtc::RTCCertificate>>(void **result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *a2 = 0;
  if (*v2 && **v2 == 1 && (v4 = v2[1]) != 0)
  {
    if (!v3)
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
      {
        webrtc::webrtc_logging_impl::Log("\r\t", v8, v9, v10, v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/pc/webrtc_session_description_factory.cc");
      }

      *(v4 + 184) = 3;
      operator new();
    }

    v15 = v3;
    result = webrtc::WebRtcSessionDescriptionFactory::SetCertificate(v4, &v15);
    v5 = v15;
    if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      v6 = *(v5 + 1);
      *(v5 + 1) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }

      return MEMORY[0x2743DA540](v5, 0x1020C40D5A9D86FLL);
    }
  }

  else if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    v7 = *(v3 + 8);
    *(v3 + 8) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    JUMPOUT(0x2743DA540);
  }

  return result;
}

uint64_t *absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::WebRtcSessionDescriptionFactory::WebRtcSessionDescriptionFactory(webrtc::ConnectionContext *,webrtc::SdpStateProvider const*,std::string const&,BOOL,std::unique_ptr<webrtc::RTCCertificateGeneratorInterface>,webrtc::scoped_refptr<webrtc::RTCCertificate>,std::function<void ()(webrtc::scoped_refptr<webrtc::RTCCertificate> const&)>,webrtc::CodecLookupHelper *,webrtc::FieldTrialsView const&)::$_0>(char a1, uint64_t **a2, uint64_t **a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v6 = *result;
      if (*result && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540](v6, 0x1000C404A09149ALL);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

webrtc::MediaSessionOptions *std::deque<webrtc::WebRtcSessionDescriptionFactory::CreateSessionDescriptionRequest>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 30 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x1E;
    v9 = v7 - 30;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      if (!(v13 >> 61))
      {
        operator new();
      }

LABEL_21:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    a1[4] = v9;
    v19 = *v4;
    a1[1] = v4 + 8;
    std::__split_buffer<webrtc::BitrateProber::ProbeCluster *>::emplace_back<webrtc::BitrateProber::ProbeCluster *&>(a1, &v19);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4 || (v14 = a1[5] + a1[4], (v15 = *&v4[8 * (v14 / 0x1E)]) == 0))
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = v15 + 136 * (v14 % 0x1E);
  *v16 = *a2;
  v17 = *(a2 + 8);
  *(v16 + 8) = v17;
  if (v17)
  {
    (**v17)(v17);
  }

  result = webrtc::MediaSessionOptions::MediaSessionOptions((v16 + 16), (a2 + 16));
  ++a1[5];
  return result;
}

void absl::internal_any_invocable::RemoteInvoker<false,void,webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(webrtc::CreateSessionDescriptionObserver *,webrtc::RTCError)::$_0 &&>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v4 = *(*a1 + 2);
  if (*(v1 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v1[2], v1[3]);
  }

  else
  {
    v3 = *(v1 + 1);
    __p.__r_.__value_.__r.__words[2] = v1[4];
    *&__p.__r_.__value_.__l.__data_ = v3;
  }

  v6[0] = *(v1 + 10);
  *(v6 + 3) = *(v1 + 43);
  (*(*v2 + 40))(v2, &v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t absl::internal_any_invocable::RemoteManagerNontrivial<webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionFailed(webrtc::CreateSessionDescriptionObserver *,webrtc::RTCError)::$_0>(uint64_t result, void **a2, void *a3)
{
  v3 = *a2;
  if (result)
  {
    if (v3)
    {
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = v3;
  }

  return result;
}

uint64_t absl::internal_any_invocable::LocalInvoker<false,void,webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionSucceeded(webrtc::CreateSessionDescriptionObserver *,std::unique_ptr<webrtc::SessionDescriptionInterface>)::$_0 &&>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  a1[1] = 0;
  return (*(*v2 + 32))(v2, v1);
}

uint64_t absl::internal_any_invocable::LocalManagerNontrivial<webrtc::WebRtcSessionDescriptionFactory::PostCreateSessionDescriptionSucceeded(webrtc::CreateSessionDescriptionObserver *,std::unique_ptr<webrtc::SessionDescriptionInterface>)::$_0>(char a1, uint64_t *a2, _OWORD *a3)
{
  if ((a1 & 1) == 0)
  {
    v4 = *a2;
    *a2 = 0;
    a2[1] = 0;
    *a3 = v4;
  }

  v5 = a2[1];
  a2[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  result = *a2;
  if (*a2)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

void _ZN4absl22internal_any_invocable13RemoteInvokerILb0EvOZN6webrtc31WebRtcSessionDescriptionFactory4PostENS_12AnyInvocableIFvvOEEEE3__0JEEET0_PNS0_15TypeErasedStateEDpNS0_18ForwardedParameterIT2_E4typeE(void **a1)
{
  v1 = **a1;
  if (v1)
  {
    if (*v1 == 1)
    {
      v2 = (*a1)[1];
      if (v2)
      {
        if (*(v2 + 232) && ((*(*(*(v2 + 200) + ((*(v2 + 224) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(v2 + 224) & 0x7FLL) + 24))(), *(v2 + 232)) && (v3 = *(*(v2 + 200) + ((*(v2 + 224) >> 4) & 0xFFFFFFFFFFFFFF8))) != 0)
        {
          (*(v3 + 32 * (*(v2 + 224) & 0x7FLL) + 16))(1, v3 + 32 * (*(v2 + 224) & 0x7FLL), v3 + 32 * (*(v2 + 224) & 0x7FLL));
          v4 = vaddq_s64(*(v2 + 224), xmmword_273B93620);
          *(v2 + 224) = v4;
          if (v4.i64[0] >= 0x100uLL)
          {
            operator delete(**(v2 + 200));
            *(v2 + 200) += 8;
            *(v2 + 224) -= 128;
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t *_ZN4absl22internal_any_invocable23RemoteManagerNontrivialIZN6webrtc31WebRtcSessionDescriptionFactory4PostENS_12AnyInvocableIFvvOEEEE3__0EEvNS0_14FunctionToCallEPNS0_15TypeErasedStateESA_(char a1, uint64_t **a2, uint64_t **a3)
{
  result = *a2;
  if (a1)
  {
    if (result)
    {
      v6 = *result;
      if (*result && atomic_fetch_add((v6 + 4), 0xFFFFFFFF) == 1)
      {
        MEMORY[0x2743DA540](v6, 0x1000C404A09149ALL);
      }

      JUMPOUT(0x2743DA540);
    }
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t WebRtcVad_set_mode(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 732) == 42)
  {
    v2 = a2 >= 3;
    v3 = a2 == 3;
  }

  else
  {
    v2 = 1;
    v3 = 0;
  }

  if (!v3 && v2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v6 = (&off_279E95F00)[a2];
  v7 = (&off_279E95F20)[a2];
  v8 = (&off_279E95F40)[a2];
  v9 = (&off_279E95F60)[a2];
  v10 = *v6;
  *(a1 + 712) = *(v6 + 2);
  *(a1 + 708) = v10;
  LODWORD(v6) = *v7;
  *(a1 + 718) = *(v7 + 2);
  *(a1 + 714) = v6;
  LODWORD(v6) = *v8;
  *(a1 + 724) = *(v8 + 2);
  *(a1 + 720) = v6;
  LODWORD(v7) = *v9;
  *(a1 + 730) = *(v9 + 2);
  *(a1 + 726) = v7;
  return result;
}

uint64_t WebRtcVad_Process(uint64_t a1, int a2, __int16 *a3, unint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1 || !a3 || *(a1 + 732) != 42)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 > 31999)
  {
    if (a2 == 32000)
    {
      v4 = 32;
      goto LABEL_13;
    }

    if (a2 == 48000)
    {
      v4 = 48;
      goto LABEL_13;
    }

    return 0xFFFFFFFFLL;
  }

  if (a2 == 8000)
  {
    v4 = 8;
    goto LABEL_13;
  }

  if (a2 != 16000)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 16;
LABEL_13:
  if (10 * v4 != a4 && 20 * v4 != a4 && 30 * v4 != a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 > 31999)
  {
    if (a2 == 32000)
    {
      LODWORD(result) = WebRtcVad_CalcVad32khz(a1, a3, a4);
    }

    else
    {
      LODWORD(result) = WebRtcVad_CalcVad48khz(a1, a3, a4);
    }
  }

  else
  {
    if (a2 == 8000)
    {
      v11 = a3;
      v12 = a4;
    }

    else
    {
      v6 = 0;
      v7 = *(a1 + 4);
      do
      {
        v8 = &a3[2 * v6];
        v9.i32[0] = *v8;
        v9.i32[1] = v8[1];
        v10 = vsra_n_u32(vshr_n_u32(vmul_s32(v9, 0x5700000147BLL), 0xEuLL), v7, 1uLL);
        v13[v6] = vadd_s32(vdup_lane_s32(v10, 1), v10).u16[0];
        v7 = vsub_s32(v9, vshr_n_s32(vmul_s32(vshr_n_s32(vshl_n_s32(v10, 0x10uLL), 0x10uLL), 0x5700000147BLL), 0xCuLL));
        ++v6;
      }

      while (a4 >> 1 != v6);
      *(a1 + 4) = v7;
      v11 = v13;
      v12 = a4 >> 1;
    }

    LODWORD(result) = WebRtcVad_CalcVad8khz(a1, v11, v12);
  }

  if (result >= 1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

void webrtc::WebRtcVideoEngine::~WebRtcVideoEngine(webrtc::WebRtcVideoEngine *this)
{
  *this = &unk_2882A3EE8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 48))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  *this = &unk_2882A3EE8;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 48))(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  JUMPOUT(0x2743DA540);
}

void webrtc::WebRtcVideoEngine::LegacySendCodecs(webrtc::WebRtcVideoEngine *this@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v130 = *MEMORY[0x277D85DE8];
  v7 = *(this + 2);
  v8 = *(this + 4);
  if (!v7)
  {
    v77 = 0;
    v78 = 0;
    v79 = 0;
    goto LABEL_65;
  }

  (**v7)(&v77);
  v9 = v78;
  if (v77 == v78)
  {
    goto LABEL_65;
  }

  *(&v98.__r_.__value_.__s + 23) = 3;
  if (&v98 <= &webrtc::kRedCodecName && v98.__r_.__value_.__r.__words + 3 > &webrtc::kRedCodecName)
  {
    goto LABEL_149;
  }

  strcpy(&v98, "red");
  v121 = v98;
  v124 = 0;
  v125 = 0;
  v122 = &v123;
  v123 = 0;
  if (v78 >= v79)
  {
    std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat>(&v77);
  }

  if (!v78)
  {
LABEL_149:
    __break(1u);
  }

  v11 = *&v98.__r_.__value_.__l.__data_;
  v78->__r_.__value_.__r.__words[2] = v98.__r_.__value_.__r.__words[2];
  *&v9->__r_.__value_.__l.__data_ = v11;
  memset(&v121, 0, sizeof(v121));
  v13 = v122;
  v12 = v123;
  v9[1].__r_.__value_.__l.__size_ = v123;
  v14 = &v9[1].__r_.__value_.__s.__data_[8];
  v9[1].__r_.__value_.__r.__words[0] = v13;
  v15 = v124;
  v9[1].__r_.__value_.__r.__words[2] = v124;
  if (v15)
  {
    *(v12 + 16) = v14;
    v122 = &v123;
    v123 = 0;
    v124 = 0;
  }

  else
  {
    v9[1].__r_.__value_.__r.__words[0] = v14;
  }

  v9[2].__r_.__value_.__r.__words[0] = 0;
  v9[2].__r_.__value_.__r.__words[0] = v125;
  v29 = v126;
  v30 = v127;
  v9[3].__r_.__value_.__r.__words[2] = v128;
  *&v9[3].__r_.__value_.__l.__data_ = v30;
  *&v9[2].__r_.__value_.__r.__words[1] = v29;
  v125 = 0;
  v78 = v9 + 4;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v122, v123);
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v98.__r_.__value_.__l.__data_);
LABEL_14:
  *(&v98.__r_.__value_.__s + 23) = 6;
  if (&v98 <= "ulpfec" && v98.__r_.__value_.__r.__words + 6 > "ulpfec")
  {
    goto LABEL_149;
  }

  strcpy(&v98, "ulpfec");
  v121 = v98;
  v124 = 0;
  v125 = 0;
  v122 = &v123;
  v123 = 0;
  v16 = v78;
  if (v78 >= v79)
  {
    std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat>(&v77);
  }

  if (!v78)
  {
    goto LABEL_149;
  }

  v17 = *&v98.__r_.__value_.__l.__data_;
  v78->__r_.__value_.__r.__words[2] = v98.__r_.__value_.__r.__words[2];
  *&v16->__r_.__value_.__l.__data_ = v17;
  memset(&v121, 0, sizeof(v121));
  v19 = v122;
  v18 = v123;
  v16[1].__r_.__value_.__l.__size_ = v123;
  v20 = &v16[1].__r_.__value_.__s.__data_[8];
  v16[1].__r_.__value_.__r.__words[0] = v19;
  v21 = v124;
  v16[1].__r_.__value_.__r.__words[2] = v124;
  if (v21)
  {
    *(v18 + 16) = v20;
    v122 = &v123;
    v123 = 0;
    v124 = 0;
  }

  else
  {
    v16[1].__r_.__value_.__r.__words[0] = v20;
  }

  v16[2].__r_.__value_.__r.__words[0] = 0;
  v16[2].__r_.__value_.__r.__words[0] = v125;
  v31 = v126;
  v32 = v127;
  v16[3].__r_.__value_.__r.__words[2] = v128;
  *&v16[3].__r_.__value_.__l.__data_ = v32;
  *&v16[2].__r_.__value_.__r.__words[1] = v31;
  v125 = 0;
  v78 = v16 + 4;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v122, v123);
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v98.__r_.__value_.__l.__data_);
LABEL_22:
  (*(*v8 + 16))(&v121, v8, "WebRTC-FlexFEC-03-Advertised", 28);
  size = HIBYTE(v121.__r_.__value_.__r.__words[2]);
  if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v121.__r_.__value_.__l.__size_;
  }

  if (size >= 7)
  {
    v24 = v121.__r_.__value_.__r.__words[0];
    if ((v121.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v121;
    }

    data = v24->__r_.__value_.__l.__data_;
    v26 = *(v24->__r_.__value_.__r.__words + 3);
    v23 = data == 1650552389 && v26 == 1684368482;
    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_38:
      operator delete(v121.__r_.__value_.__l.__data_);
      if (!v23)
      {
        goto LABEL_65;
      }

      goto LABEL_39;
    }
  }

  else
  {
    v23 = 0;
    if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_38;
    }
  }

  if (!v23)
  {
    goto LABEL_65;
  }

LABEL_39:
  *(&v98.__r_.__value_.__s + 23) = 10;
  if (&v98 <= "flexfec-03" && &v98.__r_.__value_.__r.__words[1] + 2 > "flexfec-03")
  {
    goto LABEL_149;
  }

  strcpy(&v98, "flexfec-03");
  v121 = v98;
  v124 = 0;
  v125 = 0;
  v122 = &v123;
  v123 = 0;
  *(&v98.__r_.__value_.__s + 23) = 13;
  if (&v98 <= "repair-window" && &v98.__r_.__value_.__r.__words[1] + 5 > "repair-window")
  {
    goto LABEL_149;
  }

  strcpy(&v98, "repair-window");
  HIBYTE(v100) = 8;
  if (v99 <= "10000000" && &v99[1] > "10000000")
  {
    goto LABEL_149;
  }

  strcpy(v99, "10000000");
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_unique<std::pair<std::string const,std::string> const*>(&v122, &v98.__r_.__value_.__l.__data_, &v101);
  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99[0]);
    if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_47:
      v28 = v78;
      if (v78 < v79)
      {
        goto LABEL_48;
      }

LABEL_61:
      std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat const&>(&v77);
    }
  }

  else if ((SHIBYTE(v98.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_47;
  }

  operator delete(v98.__r_.__value_.__l.__data_);
  v28 = v78;
  if (v78 >= v79)
  {
    goto LABEL_61;
  }

LABEL_48:
  if (!v28)
  {
    goto LABEL_149;
  }

  v78 = webrtc::SdpVideoFormat::SdpVideoFormat(v28, &v121) + 4;
  if (v125)
  {
    operator delete(v126);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v122, v123);
  if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v121.__r_.__value_.__l.__data_);
  }

LABEL_65:
  webrtc::PayloadTypePicker::PayloadTypePicker(&v74);
  *v71 = 0u;
  *__p = 0u;
  v73 = 1065353216;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v33 = v77;
  v34 = v78;
  if (v77 == v78)
  {
    goto LABEL_131;
  }

  do
  {
    while (1)
    {
      if (LODWORD(v121.__r_.__value_.__l.__data_))
      {
        goto LABEL_70;
      }

      if ((v129 & 1) == 0)
      {
        goto LABEL_149;
      }

      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v71, &v125 + 1);
      if ((v35 & 1) == 0)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          goto LABEL_70;
        }

        v3 = v3 & 0xFFFFFFFF00000000 | 0x7E2;
        v68[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc";
        v68[1] = v3;
        v68[2] = &v67;
        v69[0] = "Factory produced duplicate codecs, ignoring ";
        v69[1] = v68;
        if ((v129 & 1) == 0)
        {
          goto LABEL_149;
        }

        webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(&v124, &v98);
        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v81, v98.__r_.__value_.__l.__data_, v98.__r_.__value_.__l.__size_);
          *&v81[24] = v69;
          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *v81 = v98;
          *&v81[24] = v69;
        }

        v70[0] = " produced from ";
        v70[1] = v81;
        webrtc::webrtc_logging_impl::MakeVal<webrtc::SdpVideoFormat,(void *)0>(&v80, v33);
        if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v98, v80.__r_.__value_.__l.__data_, v80.__r_.__value_.__l.__size_);
          v45 = v70;
          v99[0] = v70;
          if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v80.__r_.__value_.__l.__data_);
            v45 = v99[0];
          }
        }

        else
        {
          v98 = v80;
          v45 = v70;
          v99[0] = v70;
        }

        webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v38, v39, v40, v41, v42, v43, v44, **(*(v45[1] + 24) + 8));
        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
          if ((v81[23] & 0x80000000) == 0)
          {
            goto LABEL_70;
          }
        }

        else if ((v81[23] & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

        v37 = *v81;
        goto LABEL_105;
      }

      if ((v129 & 1) == 0)
      {
        goto LABEL_149;
      }

      v36 = a3[1];
      if (v36 >= a3[2])
      {
        std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a3);
      }

      if (!v36)
      {
        goto LABEL_149;
      }

      a3[1] = webrtc::Codec::Codec(v36, &v124) + 216;
      if (a2)
      {
        if ((v129 & 1) == 0)
        {
          goto LABEL_149;
        }

        if ((webrtc::Codec::GetResiliencyType(&v124) & 6) != 2)
        {
          if ((v129 & 1) == 0)
          {
            goto LABEL_149;
          }

          if (LODWORD(v98.__r_.__value_.__l.__data_))
          {
            if (v120 == 1)
            {
              goto LABEL_91;
            }
          }

          else
          {
            if ((v120 & 1) == 0)
            {
              goto LABEL_149;
            }

            *v81 = &unk_288291428;
            *&v81[8] = v101;
            *&v81[16] = v102;
            v82 = v103;
            v102 = 0uLL;
            v103 = 0;
            v83 = v104;
            LOBYTE(v84) = 0;
            v86 = 0;
            if (v107 == 1)
            {
              v84 = v105;
              v85 = v106;
              v106 = 0;
              v105 = 0uLL;
              v86 = 1;
            }

            v87 = v108;
            v88 = v109;
            v89 = v110;
            v90 = v111;
            v108 = 0;
            LOBYTE(v91) = 0;
            v93 = 0;
            if (v114 == 1)
            {
              v91 = v112;
              v92 = v113;
              v113 = 0;
              v112 = 0uLL;
              v93 = 1;
            }

            v94 = v115;
            v95 = v116;
            v96 = v117;
            if (v117)
            {
              *(v116 + 16) = &v95;
              v115 = &v116;
              v116 = 0;
              v117 = 0;
            }

            else
            {
              v94 = &v95;
            }

            memset(v97, 0, 24);
            if (v119 != v118)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v119 - v118) >> 4) < 0x555555555555556)
              {
                operator new();
              }

              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v46 = a3[1];
            if (v46 >= a3[2])
            {
              std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec>(a3);
            }

            if (!v46)
            {
              goto LABEL_149;
            }

            *v46 = &unk_288291428;
            *(v46 + 8) = *&v81[8];
            v47 = *&v81[16];
            *(v46 + 32) = v82;
            *(v46 + 16) = v47;
            v82 = 0;
            *&v81[16] = 0uLL;
            *(v46 + 40) = v83;
            *(v46 + 56) = 0;
            *(v46 + 80) = 0;
            if (v86 == 1)
            {
              v48 = v84;
              *(v46 + 72) = v85;
              *(v46 + 56) = v48;
              v85 = 0;
              v84 = 0uLL;
              *(v46 + 80) = 1;
            }

            *(v46 + 136) = 0;
            *(v46 + 88) = 0;
            *(v46 + 88) = v87;
            v49 = v88;
            v50 = v89;
            *(v46 + 128) = v90;
            *(v46 + 112) = v50;
            *(v46 + 96) = v49;
            v87 = 0;
            *(v46 + 160) = 0;
            if (v93 == 1)
            {
              v51 = v91;
              *(v46 + 152) = v92;
              *(v46 + 136) = v51;
              v92 = 0;
              v91 = 0uLL;
              *(v46 + 160) = 1;
            }

            v53 = v94;
            v52 = v95;
            *(v46 + 176) = v95;
            v54 = v46 + 176;
            *(v46 + 168) = v53;
            v55 = v96;
            *(v46 + 184) = v96;
            if (v55)
            {
              *(v52 + 16) = v54;
              v94 = &v95;
              v95 = 0;
              v96 = 0;
            }

            else
            {
              *(v46 + 168) = v54;
            }

            std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((v46 + 192), v97);
            a3[1] = v46 + 216;
            webrtc::Codec::~Codec(v81);
            if (v120 == 1)
            {
LABEL_91:
              webrtc::Codec::~Codec(&v100);
            }
          }

          if ((SHIBYTE(v99[0]) & 0x80000000) == 0)
          {
            goto LABEL_70;
          }

          v37 = v98.__r_.__value_.__l.__size_;
LABEL_105:
          operator delete(v37);
        }
      }

LABEL_70:
      if (v129 == 1)
      {
        webrtc::Codec::~Codec(&v124);
      }

      if (SHIBYTE(v122) < 0)
      {
        break;
      }

      v33 = (v33 + 96);
      if (v33 == v34)
      {
        goto LABEL_129;
      }
    }

    operator delete(v121.__r_.__value_.__l.__size_);
    v33 = (v33 + 96);
  }

  while (v33 != v34);
LABEL_129:
  v56 = __p[0];
  if (__p[0])
  {
    do
    {
      v57 = *v56;
      operator delete(v56);
      v56 = v57;
    }

    while (v57);
  }

LABEL_131:
  v58 = v71[0];
  v71[0] = 0;
  if (v58)
  {
    operator delete(v58);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(v76, v76[1]);
  v59 = v74;
  if (v74)
  {
    v60 = v75;
    v61 = v74;
    if (v75 != v74)
    {
      do
      {
        v62 = v60 - 224;
        webrtc::Codec::~Codec((v60 - 216));
        v60 = v62;
      }

      while (v62 != v59);
      v61 = v74;
    }

    v75 = v59;
    operator delete(v61);
  }

  v63 = v77;
  if (v77)
  {
    v64 = v78;
    v65 = v77;
    if (v78 != v77)
    {
      do
      {
        while (1)
        {
          if (v64[-2].__r_.__value_.__s.__data_[0])
          {
            operator delete(v64[-2].__r_.__value_.__l.__size_);
          }

          p_data = &v64[-4].__r_.__value_.__l.__data_;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v64[-3], v64[-3].__r_.__value_.__l.__size_);
          if (SHIBYTE(v64[-4].__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          v64 -= 4;
          if (p_data == v63)
          {
            goto LABEL_146;
          }
        }

        operator delete(*p_data);
        v64 -= 4;
      }

      while (p_data != v63);
LABEL_146:
      v65 = v77;
    }

    v78 = v63;
    operator delete(v65);
  }
}

void webrtc::anonymous namespace::GetPayloadTypesAndDefaultCodecs<webrtc::VideoDecoderFactory>(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v123 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v70 = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_40;
  }

  (*(*a2 + 16))(&v70, a2);
  webrtc::AddH264ConstrainedBaselineProfileToSupportedFormats(&v70);
  v8 = v71;
  if (v70 == v71)
  {
    goto LABEL_40;
  }

  *(&v91.__r_.__value_.__s + 23) = 3;
  if (&v91 <= &webrtc::kRedCodecName && v91.__r_.__value_.__r.__words + 3 > &webrtc::kRedCodecName)
  {
    goto LABEL_132;
  }

  strcpy(&v91, "red");
  v114 = v91;
  v117 = 0;
  v118 = 0;
  v115 = &v116;
  v116 = 0;
  if (v71 >= v72)
  {
    std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat>(&v70);
  }

  if (!v71)
  {
LABEL_132:
    __break(1u);
  }

  v10 = *&v91.__r_.__value_.__l.__data_;
  v71->__r_.__value_.__r.__words[2] = v91.__r_.__value_.__r.__words[2];
  *&v8->__r_.__value_.__l.__data_ = v10;
  memset(&v114, 0, sizeof(v114));
  v12 = v115;
  v11 = v116;
  v8[1].__r_.__value_.__l.__size_ = v116;
  v13 = &v8[1].__r_.__value_.__s.__data_[8];
  v8[1].__r_.__value_.__r.__words[0] = v12;
  v14 = v117;
  v8[1].__r_.__value_.__r.__words[2] = v117;
  if (v14)
  {
    *(v11 + 16) = v13;
    v115 = &v116;
    v116 = 0;
    v117 = 0;
  }

  else
  {
    v8[1].__r_.__value_.__r.__words[0] = v13;
  }

  v8[2].__r_.__value_.__r.__words[0] = 0;
  v8[2].__r_.__value_.__r.__words[0] = v118;
  v56 = v119;
  v57 = v120;
  v8[3].__r_.__value_.__r.__words[2] = v121;
  *&v8[3].__r_.__value_.__l.__data_ = v57;
  *&v8[2].__r_.__value_.__r.__words[1] = v56;
  v118 = 0;
  v71 = v8 + 4;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v115, v116);
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v91.__r_.__value_.__l.__data_);
LABEL_14:
  *(&v91.__r_.__value_.__s + 23) = 6;
  if (&v91 <= "ulpfec" && v91.__r_.__value_.__r.__words + 6 > "ulpfec")
  {
    goto LABEL_132;
  }

  strcpy(&v91, "ulpfec");
  v114 = v91;
  v117 = 0;
  v118 = 0;
  v115 = &v116;
  v116 = 0;
  v15 = v71;
  if (v71 >= v72)
  {
    std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat>(&v70);
  }

  if (!v71)
  {
    goto LABEL_132;
  }

  v16 = *&v91.__r_.__value_.__l.__data_;
  v71->__r_.__value_.__r.__words[2] = v91.__r_.__value_.__r.__words[2];
  *&v15->__r_.__value_.__l.__data_ = v16;
  memset(&v114, 0, sizeof(v114));
  v18 = v115;
  v17 = v116;
  v15[1].__r_.__value_.__l.__size_ = v116;
  v19 = &v15[1].__r_.__value_.__s.__data_[8];
  v15[1].__r_.__value_.__r.__words[0] = v18;
  v20 = v117;
  v15[1].__r_.__value_.__r.__words[2] = v117;
  if (v20)
  {
    *(v17 + 16) = v19;
    v115 = &v116;
    v116 = 0;
    v117 = 0;
  }

  else
  {
    v15[1].__r_.__value_.__r.__words[0] = v19;
  }

  v15[2].__r_.__value_.__r.__words[0] = 0;
  v15[2].__r_.__value_.__r.__words[0] = v118;
  v58 = v119;
  v59 = v120;
  v15[3].__r_.__value_.__r.__words[2] = v121;
  *&v15[3].__r_.__value_.__l.__data_ = v59;
  *&v15[2].__r_.__value_.__r.__words[1] = v58;
  v118 = 0;
  v71 = v15 + 4;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v115, v116);
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v91.__r_.__value_.__l.__data_);
LABEL_22:
  *(&v91.__r_.__value_.__s + 23) = 10;
  if (&v91 <= "flexfec-03" && &v91.__r_.__value_.__r.__words[1] + 2 > "flexfec-03")
  {
    goto LABEL_132;
  }

  strcpy(&v91, "flexfec-03");
  v114 = v91;
  v117 = 0;
  v118 = 0;
  v115 = &v116;
  v116 = 0;
  *(&v91.__r_.__value_.__s + 23) = 13;
  if (&v91 <= "repair-window" && &v91.__r_.__value_.__r.__words[1] + 5 > "repair-window")
  {
    goto LABEL_132;
  }

  strcpy(&v91, "repair-window");
  HIBYTE(v93) = 8;
  if (v92 <= "10000000" && &v92[1] > "10000000")
  {
    goto LABEL_132;
  }

  strcpy(v92, "10000000");
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_unique<std::pair<std::string const,std::string> const*>(&v115, &v91.__r_.__value_.__l.__data_, &v94);
  if (SHIBYTE(v93) < 0)
  {
    operator delete(v92[0]);
    if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_30:
      v21 = v71;
      if (v71 < v72)
      {
        goto LABEL_31;
      }

LABEL_36:
      std::vector<webrtc::SdpVideoFormat>::__emplace_back_slow_path<webrtc::SdpVideoFormat const&>(&v70);
    }
  }

  else if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_30;
  }

  operator delete(v91.__r_.__value_.__l.__data_);
  v21 = v71;
  if (v71 >= v72)
  {
    goto LABEL_36;
  }

LABEL_31:
  if (!v21)
  {
    goto LABEL_132;
  }

  v71 = webrtc::SdpVideoFormat::SdpVideoFormat(v21, &v114) + 4;
  if (v118)
  {
    operator delete(v119);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v115, v116);
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

LABEL_40:
  webrtc::PayloadTypePicker::PayloadTypePicker(&v67);
  *v64 = 0u;
  *__p = 0u;
  v66 = 1065353216;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v22 = v70;
  v23 = v71;
  if (v70 == v71)
  {
    goto LABEL_106;
  }

  do
  {
    while (1)
    {
      if (LODWORD(v114.__r_.__value_.__l.__data_))
      {
        goto LABEL_45;
      }

      if ((v122 & 1) == 0)
      {
        goto LABEL_132;
      }

      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v64, &v118 + 1);
      if ((v24 & 1) == 0)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>())
        {
          goto LABEL_45;
        }

        v4 = v4 & 0xFFFFFFFF00000000 | 0x7E2;
        v61[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc";
        v61[1] = v4;
        v61[2] = &v60;
        v62[0] = "Factory produced duplicate codecs, ignoring ";
        v62[1] = v61;
        if ((v122 & 1) == 0)
        {
          goto LABEL_132;
        }

        webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(&v117, &v91);
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v74, v91.__r_.__value_.__l.__data_, v91.__r_.__value_.__l.__size_);
          *&v74[24] = v62;
          if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v91.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          *v74 = v91;
          *&v74[24] = v62;
        }

        v63[0] = " produced from ";
        v63[1] = v74;
        webrtc::webrtc_logging_impl::MakeVal<webrtc::SdpVideoFormat,(void *)0>(&v73, v22);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v91, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
          v34 = v63;
          v92[0] = v63;
          if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v73.__r_.__value_.__l.__data_);
            v34 = v92[0];
          }
        }

        else
        {
          v91 = v73;
          v34 = v63;
          v92[0] = v63;
        }

        webrtc::webrtc_logging_impl::Log("\r\t\n\t\n", v27, v28, v29, v30, v31, v32, v33, **(*(v34[1] + 24) + 8));
        if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v91.__r_.__value_.__l.__data_);
          if ((v74[23] & 0x80000000) == 0)
          {
            goto LABEL_45;
          }
        }

        else if ((v74[23] & 0x80000000) == 0)
        {
          goto LABEL_45;
        }

        size = *v74;
        goto LABEL_80;
      }

      if ((v122 & 1) == 0)
      {
        goto LABEL_132;
      }

      v25 = a1[1];
      if (v25 >= a1[2])
      {
        std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec const&>(a1);
      }

      if (!v25)
      {
        goto LABEL_132;
      }

      a1[1] = webrtc::Codec::Codec(v25, &v117) + 216;
      if (a3)
      {
        if ((v122 & 1) == 0)
        {
          goto LABEL_132;
        }

        if ((webrtc::Codec::GetResiliencyType(&v117) & 6) != 2)
        {
          if ((v122 & 1) == 0)
          {
            goto LABEL_132;
          }

          if (LODWORD(v91.__r_.__value_.__l.__data_))
          {
            if (v113 == 1)
            {
              goto LABEL_66;
            }
          }

          else
          {
            if ((v113 & 1) == 0)
            {
              goto LABEL_132;
            }

            *v74 = &unk_288291428;
            *&v74[8] = v94;
            *&v74[16] = v95;
            v75 = v96;
            v95 = 0uLL;
            v96 = 0;
            v76 = v97;
            LOBYTE(v77) = 0;
            v79 = 0;
            if (v100 == 1)
            {
              v77 = v98;
              v78 = v99;
              v99 = 0;
              v98 = 0uLL;
              v79 = 1;
            }

            v80 = v101;
            v81 = v102;
            v82 = v103;
            v83 = v104;
            v101 = 0;
            LOBYTE(v84) = 0;
            v86 = 0;
            if (v107 == 1)
            {
              v84 = v105;
              v85 = v106;
              v106 = 0;
              v105 = 0uLL;
              v86 = 1;
            }

            v87 = v108;
            v88 = v109;
            v89 = v110;
            if (v110)
            {
              *(v109 + 16) = &v88;
              v108 = &v109;
              v109 = 0;
              v110 = 0;
            }

            else
            {
              v87 = &v88;
            }

            memset(v90, 0, 24);
            if (v112 != v111)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v112 - v111) >> 4) < 0x555555555555556)
              {
                operator new();
              }

              std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
            }

            v35 = a1[1];
            if (v35 >= a1[2])
            {
              std::vector<webrtc::Codec>::__emplace_back_slow_path<webrtc::Codec>(a1);
            }

            if (!v35)
            {
              goto LABEL_132;
            }

            *v35 = &unk_288291428;
            *(v35 + 8) = *&v74[8];
            v36 = *&v74[16];
            *(v35 + 32) = v75;
            *(v35 + 16) = v36;
            v75 = 0;
            *&v74[16] = 0uLL;
            *(v35 + 40) = v76;
            *(v35 + 56) = 0;
            *(v35 + 80) = 0;
            if (v79 == 1)
            {
              v37 = v77;
              *(v35 + 72) = v78;
              *(v35 + 56) = v37;
              v78 = 0;
              v77 = 0uLL;
              *(v35 + 80) = 1;
            }

            *(v35 + 136) = 0;
            *(v35 + 88) = 0;
            *(v35 + 88) = v80;
            v38 = v81;
            v39 = v82;
            *(v35 + 128) = v83;
            *(v35 + 112) = v39;
            *(v35 + 96) = v38;
            v80 = 0;
            *(v35 + 160) = 0;
            if (v86 == 1)
            {
              v40 = v84;
              *(v35 + 152) = v85;
              *(v35 + 136) = v40;
              v85 = 0;
              v84 = 0uLL;
              *(v35 + 160) = 1;
            }

            v42 = v87;
            v41 = v88;
            *(v35 + 176) = v88;
            v43 = v35 + 176;
            *(v35 + 168) = v42;
            v44 = v89;
            *(v35 + 184) = v89;
            if (v44)
            {
              *(v41 + 16) = v43;
              v87 = &v88;
              v88 = 0;
              v89 = 0;
            }

            else
            {
              *(v35 + 168) = v43;
            }

            std::vector<webrtc::FeedbackParam>::vector[abi:sn200100]((v35 + 192), v90);
            a1[1] = v35 + 216;
            webrtc::Codec::~Codec(v74);
            if (v113 == 1)
            {
LABEL_66:
              webrtc::Codec::~Codec(&v93);
            }
          }

          if ((SHIBYTE(v92[0]) & 0x80000000) == 0)
          {
            goto LABEL_45;
          }

          size = v91.__r_.__value_.__l.__size_;
LABEL_80:
          operator delete(size);
        }
      }

LABEL_45:
      if (v122 == 1)
      {
        webrtc::Codec::~Codec(&v117);
      }

      if (SHIBYTE(v115) < 0)
      {
        break;
      }

      v22 = (v22 + 96);
      if (v22 == v23)
      {
        goto LABEL_104;
      }
    }

    operator delete(v114.__r_.__value_.__l.__size_);
    v22 = (v22 + 96);
  }

  while (v22 != v23);
LABEL_104:
  v45 = __p[0];
  if (__p[0])
  {
    do
    {
      v46 = *v45;
      operator delete(v45);
      v45 = v46;
    }

    while (v46);
  }

LABEL_106:
  v47 = v64[0];
  v64[0] = 0;
  if (v47)
  {
    operator delete(v47);
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(v69, v69[1]);
  v48 = v67;
  if (v67)
  {
    v49 = v68;
    v50 = v67;
    if (v68 != v67)
    {
      do
      {
        v51 = v49 - 224;
        webrtc::Codec::~Codec((v49 - 216));
        v49 = v51;
      }

      while (v51 != v48);
      v50 = v67;
    }

    v68 = v48;
    operator delete(v50);
  }

  v52 = v70;
  if (v70)
  {
    v53 = v71;
    v54 = v70;
    if (v71 != v70)
    {
      do
      {
        while (1)
        {
          if (v53[-2].__r_.__value_.__s.__data_[0])
          {
            operator delete(v53[-2].__r_.__value_.__l.__size_);
          }

          p_data = &v53[-4].__r_.__value_.__l.__data_;
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v53[-3], v53[-3].__r_.__value_.__l.__size_);
          if (SHIBYTE(v53[-4].__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          v53 -= 4;
          if (p_data == v52)
          {
            goto LABEL_121;
          }
        }

        operator delete(*p_data);
        v53 -= 4;
      }

      while (p_data != v52);
LABEL_121:
      v54 = v70;
    }

    v71 = v52;
    operator delete(v54);
  }
}

void webrtc::WebRtcVideoEngine::GetRtpHeaderExtensions(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a1[2])
  {
    __break(1u);
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  std::vector<webrtc::RtpHeaderExtensionCapability>::__emplace_back_slow_path<char const* const&,int,webrtc::RtpTransceiverDirection>(a1);
}

BOOL webrtc::anonymous namespace::IsEnabled(uint64_t a1)
{
  (*(*a1 + 16))(__p);
  v1 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v1 = __p[1];
  }

  if (v1 >= 7)
  {
    v3 = __p[0];
    if ((v9 & 0x80u) == 0)
    {
      v3 = __p;
    }

    v4 = *v3;
    v5 = *(v3 + 3);
    v2 = v4 == 1650552389 && v5 == 1684368482;
    if (v9 < 0)
    {
      goto LABEL_16;
    }

    return v2;
  }

  v2 = 0;
  if ((v9 & 0x80000000) == 0)
  {
    return v2;
  }

LABEL_16:
  operator delete(__p[0]);
  return v2;
}

void webrtc::WebRtcVideoSendChannel::~WebRtcVideoSendChannel(webrtc::WebRtcVideoSendChannel *this)
{
  *this = &unk_2882A3F40;
  *(this + 8) = &unk_2882A4068;
  *(this + 9) = &unk_2882A4178;
  v2 = *(this + 18);
  v3 = this + 152;
  if (v2 != this + 152)
  {
    do
    {
      v4 = *(v2 + 5);
      if (v4)
      {
        webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::~WebRtcVideoSendStream(v4);
        MEMORY[0x2743DA540]();
      }

      v5 = *(v2 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  (*(this + 145))(1, this + 1144, this + 1144);
  (*(this + 141))(1, this + 1112, this + 1112);
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1088, *(this + 137));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 1064, *(this + 134));
  v8 = *(this + 126);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(this + 123);
  if (v9)
  {
    *(this + 124) = v9;
    operator delete(v9);
  }

  webrtc::StreamParams::~StreamParams((this + 832));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 720));
  webrtc::MediaChannelParameters::~MediaChannelParameters((this + 600));
  v10 = *(this + 68);
  if (v10)
  {
    v11 = *(this + 69);
    v12 = *(this + 68);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 9);
        v11 -= 4;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v12 = *(this + 68);
    }

    *(this + 69) = v10;
    operator delete(v12);
  }

  v14 = *(this + 65);
  if (v14)
  {
    v15 = *(this + 66);
    v16 = *(this + 65);
    if (v15 != v14)
    {
      do
      {
        webrtc::Codec::~Codec((v15 - 248));
      }

      while (v15 != v14);
      v16 = *(this + 65);
    }

    *(this + 66) = v14;
    operator delete(v16);
  }

  v17 = *(this + 62);
  if (v17)
  {
    v18 = *(this + 63);
    v19 = *(this + 62);
    if (v18 != v17)
    {
      do
      {
        webrtc::Codec::~Codec((v18 - 248));
      }

      while (v18 != v17);
      v19 = *(this + 62);
    }

    *(this + 63) = v17;
    operator delete(v19);
  }

  if (*(this + 488) == 1)
  {
    webrtc::Codec::~Codec((this + 240));
  }

  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 216, *(this + 28));
  std::__tree<sigslot::_signal_base_interface *>::destroy(this + 192, *(this + 25));
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(*(this + 19));
  v20 = *(this + 11);
  *(v20 + 4) = 0;
  if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
  {
    MEMORY[0x2743DA540]();
  }

  *this = &unk_288295EE8;
  *(this + 2) = &unk_288295F60;
  v21 = *(this + 3);
  if (v21)
  {
    if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      MEMORY[0x2743DA540]();
    }
  }
}

{
  webrtc::WebRtcVideoSendChannel::~WebRtcVideoSendChannel(this);

  JUMPOUT(0x2743DA540);
}

void non-virtual thunk towebrtc::WebRtcVideoSendChannel::~WebRtcVideoSendChannel(webrtc::WebRtcVideoSendChannel *this)
{
  webrtc::WebRtcVideoSendChannel::~WebRtcVideoSendChannel((this - 64));
}

{
  webrtc::WebRtcVideoSendChannel::~WebRtcVideoSendChannel((this - 72));
}

{
  webrtc::WebRtcVideoSendChannel::~WebRtcVideoSendChannel((this - 64));

  JUMPOUT(0x2743DA540);
}

{
  webrtc::WebRtcVideoSendChannel::~WebRtcVideoSendChannel((this - 72));

  JUMPOUT(0x2743DA540);
}

uint64_t webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::ConfigureVideoEncoderSettings(webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream *this, const webrtc::Codec *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = *MEMORY[0x277D85DE8];
  if (*(a2 + 525) == 1)
  {
    v9 = *(a2 + 524);
    if (*(a2 + 1201))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
    if (*(a2 + 1201))
    {
      goto LABEL_13;
    }
  }

  if (v9)
  {
    goto LABEL_13;
  }

  if (*(a2 + 12) - *(a2 + 11) == 4)
  {
    goto LABEL_13;
  }

  v10 = *(a2 + 141);
  v11 = *(a2 + 142) - v10;
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11 >> 4;
  v13 = 0xF0F0F0F0F0F0F0F1 * v12;
  if (0xF0F0F0F0F0F0F0F1 * v12 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 0xF0F0F0F0F0F0F0F1 * v12;
  }

  if (v13 >= 2)
  {
    v41 = 0;
    v42 = 0;
    v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v43 = v14 & 0xFFFFFFFFFFFFFFFELL;
    v44 = *(a2 + 141);
    do
    {
      v41 += *(v44 + 124);
      v42 += *(v44 + 396);
      v44 += 544;
      v43 -= 2;
    }

    while (v43);
    v16 = v42 + v41;
    if (v13 == v15)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  v45 = v14 - v15;
  v46 = (v10 + 272 * v15 + 124);
  do
  {
    v16 += *v46;
    v46 += 272;
    --v45;
  }

  while (v45);
LABEL_13:
  v19 = *(a3 + 16);
  v17 = a3 + 16;
  v18 = v19;
  v20 = *(v17 + 23);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(v17 + 8);
  }

  else
  {
    v18 = v17;
  }

  if (v20 == 3)
  {
    v21 = *v18;
    v22 = webrtc::kVp8CodecName[0];
    if (v21 == webrtc::kVp8CodecName[0])
    {
      goto LABEL_23;
    }

    if ((v21 - 65) < 0x1A)
    {
      LOBYTE(v21) = v21 + 32;
    }

    if (webrtc::kVp8CodecName[0] - 65 < 0x1A)
    {
      v22 = webrtc::kVp8CodecName[0] + 32;
    }

    if (v21 == v22)
    {
LABEL_23:
      v23 = v18[1];
      v24 = webrtc::kVp8CodecName[1];
      if (v23 == webrtc::kVp8CodecName[1])
      {
        goto LABEL_29;
      }

      if ((v23 - 65) < 0x1A)
      {
        LOBYTE(v23) = v23 + 32;
      }

      if (webrtc::kVp8CodecName[1] - 65 < 0x1A)
      {
        v24 = webrtc::kVp8CodecName[1] + 32;
      }

      if (v23 == v24)
      {
LABEL_29:
        v25 = v18[2];
        v26 = webrtc::kVp8CodecName[2];
        if (v25 == webrtc::kVp8CodecName[2])
        {
          goto LABEL_35;
        }

        if ((v25 - 65) < 0x1A)
        {
          LOBYTE(v25) = v25 + 32;
        }

        if (webrtc::kVp8CodecName[2] - 65 < 0x1A)
        {
          v26 = webrtc::kVp8CodecName[2] + 32;
        }

        if (v25 == v26)
        {
LABEL_35:
          operator new();
        }
      }
    }

    v27 = &webrtc::kVp9CodecName;
    v28 = v18;
    v29 = 3;
    do
    {
      v31 = *v28++;
      v30 = v31;
      v33 = *v27;
      v27 = (v27 + 1);
      v32 = v33;
      if (v30 != v33)
      {
        if ((v30 - 65) < 0x1A)
        {
          LOBYTE(v30) = v30 + 32;
        }

        if ((v32 - 65) < 0x1A)
        {
          LOBYTE(v32) = v32 + 32;
        }

        if (v30 != v32)
        {
          v34 = &webrtc::kAv1CodecName;
          while (1)
          {
            v36 = *v18++;
            v35 = v36;
            v38 = *v34;
            v34 = (v34 + 1);
            v37 = v38;
            if (v35 != v38)
            {
              if ((v35 - 65) < 0x1A)
              {
                LOBYTE(v35) = v35 + 32;
              }

              if ((v37 - 65) < 0x1A)
              {
                LOBYTE(v37) = v37 + 32;
              }

              if (v35 != v37)
              {
                goto LABEL_52;
              }
            }

            if (!--v20)
            {
              v47 = *(a2 + 141);
              if (*(a2 + 142) != v47)
              {
                if (*(v47 + 104) == 1)
                {
                  if (*(v47 + 103) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v78, *(v47 + 80), *(v47 + 88));
                  }

                  else
                  {
                    v78 = *(v47 + 80);
                  }
                }

                else
                {
                  *(&v78.__r_.__value_.__s + 23) = 0;
                  v78.__r_.__value_.__s.__data_[0] = 0;
                }

                v66 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
                v67 = v78.__r_.__value_.__r.__words[0];
                if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v68 = &v78;
                }

                else
                {
                  v68 = v78.__r_.__value_.__r.__words[0];
                }

                if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v78.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v78.__r_.__value_.__l.__size_;
                }

                v70 = &qword_279E94B78;
                v71 = 1632;
                do
                {
                  if (*v70 == size && !memcmp(*(v70 - 1), v68, size))
                  {
                    v72 = 0;
                    v73 = *(v70 - 16);
                    goto LABEL_149;
                  }

                  v70 += 6;
                  v71 -= 48;
                }

                while (v71);
                v73 = 0;
                v72 = 1;
LABEL_149:
                if (v66 < 0)
                {
                  operator delete(v67);
                }

                if ((v72 & 1) == 0)
                {
                  webrtc::ScalabilityModeToNumSpatialLayers(v73, a2, v17, a4, a5, a6, a7, a8);
                }
              }

              operator new();
            }
          }
        }
      }

      --v29;
    }

    while (v29);
    v40 = *(a2 + 141);
    if (*(a2 + 142) == v40)
    {
      goto LABEL_85;
    }

    if (*(v40 + 104) == 1)
    {
      if (*(v40 + 103) < 0)
      {
        std::string::__init_copy_ctor_external(&v78, *(v40 + 80), *(v40 + 88));
      }

      else
      {
        v78 = *(v40 + 80);
      }
    }

    else
    {
      *(&v78.__r_.__value_.__s + 23) = 0;
      v78.__r_.__value_.__s.__data_[0] = 0;
    }

    v48 = SHIBYTE(v78.__r_.__value_.__r.__words[2]);
    v49 = v78.__r_.__value_.__r.__words[0];
    v50 = (v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v78 : v78.__r_.__value_.__r.__words[0];
    v51 = (v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v78.__r_.__value_.__r.__words[2]) : v78.__r_.__value_.__l.__size_;
    v52 = &qword_279E94B78;
    v53 = 1632;
    do
    {
      if (*v52 == v51 && !memcmp(*(v52 - 1), v50, v51))
      {
        v54 = 0;
        v55 = *(v52 - 16);
        if ((v48 & 0x80000000) == 0)
        {
          goto LABEL_83;
        }

        goto LABEL_82;
      }

      v52 += 6;
      v53 -= 48;
    }

    while (v53);
    v55 = 0;
    v54 = 1;
    if ((v48 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

LABEL_82:
    operator delete(v49);
LABEL_83:
    if ((v54 & 1) != 0 || v55 < 0x22)
    {
LABEL_85:
      if ((v9 & 1) == 0)
      {
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v88 = 7;
        if (v87 <= "Enabled" && v87 + 7 > "Enabled" || (strcpy(v87, "Enabled"), v89 = 0, v83 = &unk_288293940, v94 = 3, &v92 <= "off") && &v92 + 3 > "off" || (LODWORD(v92) = 6710895, v95 = 0, v97 = 2, v96 <= "on") && v96 + 2 > "on" || (strcpy(v96, "on"), v98 = 1, v100 = 8, v99 <= "onkeypic") && &v99[1] > "onkeypic")
        {
          __break(1u);
        }

        strcpy(v99, "onkeypic");
        v101 = 2;
        v77[0] = 0;
        v77[1] = 0;
        v76 = v77;
        std::__tree<std::__value_type<std::string,webrtc::InterLayerPredMode>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::InterLayerPredMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::InterLayerPredMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,webrtc::InterLayerPredMode> const&>(&v76, v77, &v92);
        std::__tree<std::__value_type<std::string,webrtc::InterLayerPredMode>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::InterLayerPredMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::InterLayerPredMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,webrtc::InterLayerPredMode> const&>(&v76, v77, v96);
        std::__tree<std::__value_type<std::string,webrtc::InterLayerPredMode>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::InterLayerPredMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::InterLayerPredMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,webrtc::InterLayerPredMode> const&>(&v76, v77, v99);
        v91[0] = 0;
        v91[1] = 0;
        v90 = v91;
        v56 = v76;
        if (v76 == v77)
        {
          v103 = 0;
          v104 = 0;
          v102 = &v103;
        }

        else
        {
          do
          {
            std::__tree<std::__value_type<std::string,webrtc::InterLayerPredMode>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::InterLayerPredMode>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::InterLayerPredMode>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,webrtc::InterLayerPredMode> const&>(&v90, v91, v56 + 4);
            v57 = v56[1];
            if (v57)
            {
              do
              {
                v58 = v57;
                v57 = *v57;
              }

              while (v57);
            }

            else
            {
              do
              {
                v58 = v56[2];
                v59 = *v58 == v56;
                v56 = v58;
              }

              while (!v59);
            }

            v56 = v58;
          }

          while (v58 != v77);
          v103 = 0;
          v104 = 0;
          v102 = &v103;
          if (v90 != v91)
          {
            operator new();
          }
        }

        webrtc::AbstractFieldTrialEnum::AbstractFieldTrialEnum(&v78, "inter_layer_pred_mode", 0x15uLL, 2, &v102);
        std::__tree<webrtc::SocketAddress>::destroy(&v102, v103);
        std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(v91[0]);
        v78.__r_.__value_.__r.__words[0] = &unk_2882A4448;
        std::__tree<std::__value_type<std::string,webrtc::StatsReport *>,std::__map_value_compare<std::string,std::__value_type<std::string,webrtc::StatsReport *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,webrtc::StatsReport *>>>::destroy(v77[0]);
        if (v100 < 0)
        {
          operator delete(v99[0]);
          v60 = a2;
          if (v97 < 0)
          {
            goto LABEL_133;
          }

LABEL_107:
          if (v94 < 0)
          {
LABEL_134:
            operator delete(v92);
          }
        }

        else
        {
          v60 = a2;
          if ((v97 & 0x80000000) == 0)
          {
            goto LABEL_107;
          }

LABEL_133:
          operator delete(v96[0]);
          if (v94 < 0)
          {
            goto LABEL_134;
          }
        }

        v102 = &v83;
        v103 = &v78;
        v61 = (*(**(v60 + 7) + 224))(*(v60 + 7));
        (*(*v61 + 16))(&v92);
        if (v94 >= 0)
        {
          v62 = &v92;
        }

        else
        {
          v62 = v92;
        }

        if (v94 >= 0)
        {
          v63 = v94;
        }

        else
        {
          v63 = v93;
        }

        webrtc::ParseFieldTrial(&v102, 2, v62, v63);
        if (v94 < 0)
        {
          operator delete(v92);
        }

        v64 = (*(**(v60 + 7) + 224))(*(v60 + 7));
        (*(*v64 + 16))(&v92);
        v65 = v94;
        if (v94 < 0)
        {
          v65 = v93;
        }

        if (v65 >= 8)
        {
          if (v94 < 0)
          {
            goto LABEL_122;
          }
        }

        else if (v94 < 0)
        {
LABEL_122:
          operator delete(v92);
        }

        v78.__r_.__value_.__r.__words[0] = &unk_288293970;
        std::__tree<sigslot::_signal_base_interface *>::destroy(v82, v82[1]);
        std::__tree<webrtc::SocketAddress>::destroy(v81, v81[1]);
        v78.__r_.__value_.__r.__words[0] = &unk_288293910;
        if (v80 < 0)
        {
          operator delete(__p);
        }

        if (v78.__r_.__value_.__l.__size_)
        {
          v78.__r_.__value_.__r.__words[2] = v78.__r_.__value_.__l.__size_;
          operator delete(v78.__r_.__value_.__l.__size_);
        }

        v83 = &unk_288293910;
        if (v88 < 0)
        {
          operator delete(v87[0]);
        }

        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }
      }

      operator new();
    }

    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/modules/video_coding/svc/scalability_mode_util.cc", 309, "index < kNumScalabilityModes", webrtc::webrtc_checks_impl::LogStreamer<>::CallCheckOp<webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long>>(char const*,int,char const*,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)1,int>,webrtc::webrtc_checks_impl::Val<(webrtc::webrtc_checks_impl::CheckArgType)5,unsigned long> const&)::t, a5, a6, a7, a8, v55);
    return webrtc::FieldTrialEnum<webrtc::InterLayerPredMode>::~FieldTrialEnum(v74);
  }

  else
  {
LABEL_52:
    result = 0;
    *this = 0;
  }

  return result;
}

uint64_t webrtc::FieldTrialEnum<webrtc::InterLayerPredMode>::~FieldTrialEnum(uint64_t a1)
{
  *a1 = &unk_288293970;
  std::__tree<sigslot::_signal_base_interface *>::destroy(a1 + 88, *(a1 + 96));
  std::__tree<webrtc::SocketAddress>::destroy(a1 + 64, *(a1 + 72));
  *a1 = &unk_288293910;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void webrtc::anonymous namespace::ValidateCodecFormats(uint64_t *a1)
{
  v2 = *a1;
  if (a1[1] == *a1)
  {
LABEL_22:
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      return;
    }

    memset(&v42, 0, sizeof(v42));
    if (&v42 > "{" || &v42.__r_.__value_.__l.__data_ + 1 <= "{")
    {
      v42.__r_.__value_.__s.__data_[0] = 123;
      v18 = 1;
      *(&v42.__r_.__value_.__s + 23) = 1;
      v19 = *a1;
      if (a1[1] != *a1)
      {
        v20 = 0;
        v21 = 0;
        v22 = ", ";
        while (1)
        {
          webrtc::Codec::ToString((v19 + v20), &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          if (p_p)
          {
            v23 = 1;
          }

          else
          {
            v23 = size == 0;
          }

          if (!v23)
          {
            goto LABEL_98;
          }

          if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = 22;
          }

          else
          {
            v24 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          }

          if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = v42.__r_.__value_.__l.__size_;
          }

          if (v24 - v25 >= size)
          {
            if (size)
            {
              if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v26 = &v42;
              }

              else
              {
                v26 = v42.__r_.__value_.__r.__words[0];
              }

              if ((size & 0x8000000000000000) != 0)
              {
                goto LABEL_98;
              }

              v27 = v26 + v25;
              if ((v26 + v25) <= p_p && &v27[size] > p_p)
              {
                goto LABEL_98;
              }

              v28 = v22;
              v29 = size;
              memmove(v27, p_p, size);
              v30 = v25 + v29;
              if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
              {
                v42.__r_.__value_.__l.__size_ = v25 + v29;
              }

              else
              {
                *(&v42.__r_.__value_.__s + 23) = v30 & 0x7F;
              }

              v22 = v28;
              v26->__r_.__value_.__s.__data_[v30] = 0;
            }
          }

          else
          {
            std::string::__grow_by_and_replace(&v42, v24, v25 + size - v24, v25, v25, 0, size, p_p);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (v21 != -1 - 0x7B425ED097B425EDLL * ((a1[1] - *a1) >> 3))
            {
LABEL_63:
              if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v31 = 22;
              }

              else
              {
                v31 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              }

              if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v13 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v13 = v42.__r_.__value_.__l.__size_;
              }

              if (v31 - v13 < 2)
              {
                std::string::__grow_by_and_replace(&v42, v31, v13 - v31 + 2, v13, v13, 0, 2uLL, v22);
              }

              else
              {
                v32 = &v42;
                if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v32 = v42.__r_.__value_.__r.__words[0];
                }

                v33 = (v32 + v13);
                if (v32 + v13 <= v22 && v33 + 1 > v22)
                {
                  goto LABEL_98;
                }

                *v33 = 8236;
                v34 = v13 + 2;
                if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
                {
                  v42.__r_.__value_.__l.__size_ = v13 + 2;
                }

                else
                {
                  *(&v42.__r_.__value_.__s + 23) = v34 & 0x7F;
                }

                v32->__r_.__value_.__s.__data_[v34] = 0;
              }
            }
          }

          else if (v21 != -1 - 0x7B425ED097B425EDLL * ((a1[1] - *a1) >> 3))
          {
            goto LABEL_63;
          }

          ++v21;
          v19 = *a1;
          v20 += 216;
          if (v21 >= 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3))
          {
            v18 = HIBYTE(v42.__r_.__value_.__r.__words[2]);
            v35 = v42.__r_.__value_.__l.__size_;
            goto LABEL_80;
          }
        }
      }

      v35 = 0;
LABEL_80:
      v36 = v18;
      if ((v18 & 0x80u) == 0)
      {
        v37 = 22;
      }

      else
      {
        v37 = (v42.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      }

      if ((v18 & 0x80u) == 0)
      {
        v35 = v18;
      }

      if (v37 == v35)
      {
        std::string::__grow_by_and_replace(&v42, v37, 1uLL, v37, v37, 0, 1uLL, "}");
LABEL_95:
        __p = v42;
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v37, v12, v13, v14, v15, size, p_p, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return;
      }

      v38 = v42.__r_.__value_.__r.__words[0];
      if (v36 >= 0)
      {
        v38 = &v42;
      }

      v39 = v38 + v35;
      if (v38 + v35 > "}" || v39 + 1 <= "}")
      {
        *v39 = 125;
        v40 = v35 + 1;
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          v42.__r_.__value_.__l.__size_ = v40;
        }

        else
        {
          *(&v42.__r_.__value_.__s + 23) = v40 & 0x7F;
        }

        v38->__r_.__value_.__s.__data_[v40] = 0;
        goto LABEL_95;
      }
    }

LABEL_98:
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  do
  {
    if (!webrtc::Codec::ValidateCodecFormat((v2 + v3)))
    {
      return;
    }

    v6 = *a1;
    if (0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3) <= v4)
    {
      goto LABEL_98;
    }

    v7 = v6 + v3;
    if (!webrtc::Codec::GetResiliencyType((v6 + v3)))
    {
      v8 = (v7 + 16);
      v9 = *(v7 + 39);
      if (v9 < 0)
      {
        v8 = *v8;
        if (*(v6 + v3 + 24) != 2)
        {
          goto LABEL_3;
        }
      }

      else if (v9 != 2)
      {
        goto LABEL_3;
      }

      v10 = *v8;
      if (v10 != 67)
      {
        if ((v10 - 65) < 0x1A)
        {
          LOBYTE(v10) = v10 + 32;
        }

        if (v10 != 99)
        {
          goto LABEL_3;
        }
      }

      v11 = v8[1];
      if (v11 != 78)
      {
        if ((v11 - 65) < 0x1A)
        {
          LOBYTE(v11) = v11 + 32;
        }

        if (v11 != 110)
        {
LABEL_3:
          v5 = 1;
        }
      }
    }

    ++v4;
    v2 = *a1;
    v3 += 216;
  }

  while (v4 < 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3));
  if ((v5 & 1) == 0)
  {
    goto LABEL_22;
  }
}

void webrtc::anonymous namespace::MapCodecs(uint64_t a1, webrtc::Codec *a2, webrtc::Codec *a3)
{
  v124 = *MEMORY[0x277D85DE8];
  if (a2 == a3)
  {
    *a1 = 0;
    *(a1 + 38) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 29) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 64) = 1;
    return;
  }

  v3 = a2;
  v4 = 0;
  v107 = 0;
  v120[0] = 0;
  v120[1] = 0;
  v119[1] = 0;
  v119[2] = v120;
  v118 = v119;
  v119[0] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v116 = v117;
  v6 = &v122 <= "apt" && v122.__r_.__value_.__r.__words + 3 > "apt";
  v103 = v6;
  v115[0] = 0;
  v115[1] = 0;
  v8 = &v122 <= "rtx-time" && &v122.__r_.__value_.__r.__words[1] > "rtx-time";
  v102 = v8;
  v114[2] = v115;
  v105 = -1;
  v106 = -1;
  do
  {
    v10 = *(v3 + 3);
    v11 = v120[0];
    if (v120[0])
    {
      v12 = v120;
      do
      {
        if (*(v11 + 7) >= v10)
        {
          v12 = v11;
        }

        v11 = v11[*(v11 + 7) < v10];
      }

      while (v11);
      if (v12 != v120 && v10 >= *(v12 + 7))
      {
        v26 = v115[0];
        if (!v115[0])
        {
          goto LABEL_161;
        }

        while (1)
        {
          while (1)
          {
            v27 = *(v26 + 8);
            if (v10 >= v27)
            {
              break;
            }

            v26 = *v26;
            if (!v26)
            {
              goto LABEL_161;
            }
          }

          if (v27 >= v10)
          {
            break;
          }

          v26 = v26[1];
          if (!v26)
          {
            goto LABEL_161;
          }
        }

        webrtc::MatchesWithCodecRules((v26 + 5), v3, a3);
        if ((v9 & 1) == 0)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            v110[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc";
            v110[1] = 4659;
            v110[2] = &v109;
            v111[0] = "Duplicate codec ID, rejecting ";
            v111[1] = v110;
            webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>(v3, &v122);
            if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v112, v122.__r_.__value_.__l.__data_, v122.__r_.__value_.__l.__size_);
              v113 = v111;
              if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v122.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v112 = v122;
              v113 = v111;
            }

            v114[0] = " because ";
            v114[1] = &v112;
            v87 = v115[0];
            if (!v115[0])
            {
LABEL_161:
              abort();
            }

            v88 = *(v3 + 3);
            while (1)
            {
              while (1)
              {
                v89 = *(v87 + 8);
                if (v88 >= v89)
                {
                  break;
                }

                v87 = *v87;
                if (!v87)
                {
                  goto LABEL_161;
                }
              }

              if (v89 >= v88)
              {
                break;
              }

              v87 = v87[1];
              if (!v87)
              {
                goto LABEL_161;
              }
            }

            webrtc::webrtc_logging_impl::MakeVal<webrtc::Codec,(void *)0>((v87 + 5), &v121);
            if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v122, v121.__r_.__value_.__l.__data_, v121.__r_.__value_.__l.__size_);
              v97 = v114;
              v123 = v114;
              if (SHIBYTE(v121.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v121.__r_.__value_.__l.__data_);
                v97 = v123;
              }
            }

            else
            {
              v122 = v121;
              v97 = v114;
              v123 = v114;
            }

            webrtc::webrtc_logging_impl::Log("\r\t\n\t\n\t", v90, v91, v92, v93, v94, v95, v96, **(*(v97[1] + 24) + 8));
            if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v122.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v112.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v112.__r_.__value_.__l.__data_);
            }
          }

          operator new();
        }

        goto LABEL_16;
      }
    }

    LODWORD(v122.__r_.__value_.__l.__data_) = *(v3 + 3);
    webrtc::Codec::Codec(&v122.__r_.__value_.__r.__words[1], v3);
    v13 = v115[0];
    if (!v115[0])
    {
LABEL_30:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 8);
        if (SLODWORD(v122.__r_.__value_.__l.__data_) >= v15)
        {
          break;
        }

        v13 = *v14;
        if (!*v14)
        {
          goto LABEL_30;
        }
      }

      if (v15 >= SLODWORD(v122.__r_.__value_.__l.__data_))
      {
        break;
      }

      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_30;
      }
    }

    webrtc::Codec::~Codec(&v122.__r_.__value_.__r.__words[1]);
    ResiliencyType = webrtc::Codec::GetResiliencyType(v3);
    v17 = v120[0];
LABEL_33:
    if (!v17)
    {
LABEL_37:
      operator new();
    }

    while (1)
    {
      v18 = v17;
      v19 = *(v17 + 7);
      if (v10 < v19)
      {
        v17 = *v18;
        goto LABEL_33;
      }

      if (v19 >= v10)
      {
        break;
      }

      v17 = v18[1];
      if (!v17)
      {
        goto LABEL_37;
      }
    }

    *(v18 + 8) = ResiliencyType;
    v28 = webrtc::Codec::GetResiliencyType(v3);
    if (v28 > 1)
    {
      if (v28 != 2)
      {
        if (v28 == 3)
        {
          if (v107)
          {
            if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
            {
              v98 = v98 & 0xFFFFFFFF00000000 | 0x1353;
              webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v20, a3, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
            }

            v107 = 1;
          }

          else
          {
            v107 = 1;
          }

          goto LABEL_16;
        }

        *(&v122.__r_.__value_.__s + 23) = 3;
        if (v103)
        {
          goto LABEL_171;
        }

        LOWORD(v122.__r_.__value_.__l.__data_) = *"apt";
        *&v122.__r_.__value_.__s.__data_[2] = webrtc::kCodecParamAssociatedPayloadType[2];
        v35 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v3 + 168, &v122.__r_.__value_.__l.__data_);
        if ((v3 + 176) == v35 || ((v36 = *(v35 + 79), (v36 & 0x8000000000000000) != 0) ? (v39 = v35, v37 = v35[7], v36 = v39[8]) : (v37 = (v35 + 7)), (v40 = webrtc::string_to_number_internal::ParseSigned(v37, v36, 0xAuLL), (v41 & ((v40 + 0x80000000) >> 32 == 0)) == 0) ? (v42 = 0) : (v42 = v40 | 0x100000000), !HIDWORD(v42)))
        {
          if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v122.__r_.__value_.__l.__data_);
          }

LABEL_140:
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::Codec::ToString(v3, &v122);
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v66, v67, v68, v69, v70, v71, v72, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
            if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v122.__r_.__value_.__l.__data_);
            }
          }

          operator new();
        }

        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        if (v42 >= 0x80)
        {
          goto LABEL_140;
        }

        *(&v122.__r_.__value_.__s + 23) = 8;
        if (v102)
        {
          goto LABEL_171;
        }

        strcpy(&v122, "rtx-time");
        v43 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v3 + 168, &v122.__r_.__value_.__l.__data_);
        v104 = v4;
        if ((v3 + 176) == v43)
        {
          v46 = 0;
          v47 = 0;
          if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_99;
          }
        }

        else
        {
          v44 = *(v43 + 79);
          if ((v44 & 0x8000000000000000) != 0)
          {
            v48 = v43;
            v45 = v43[7];
            v44 = v48[8];
          }

          else
          {
            v45 = (v43 + 7);
          }

          v49 = webrtc::string_to_number_internal::ParseSigned(v45, v44, 0xAuLL);
          v50 = v49 | 0x100000000;
          if ((v51 & ((v49 + 0x80000000) >> 32 == 0)) == 0)
          {
            v50 = 0;
          }

          if (HIDWORD(v50))
          {
            v46 = v50;
          }

          else
          {
            v46 = 0;
          }

          if (v46 > 0)
          {
            v47 = HIDWORD(v50);
          }

          else
          {
            v47 = 0;
          }

          if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_99:
            operator delete(v122.__r_.__value_.__l.__data_);
          }
        }

        if (!v47)
        {
          v52 = v119[0];
          v4 = v104;
          if (v119[0])
          {
            goto LABEL_113;
          }

LABEL_117:
          operator new();
        }

        v53 = v117[0];
LABEL_105:
        if (!v53)
        {
LABEL_109:
          operator new();
        }

        while (1)
        {
          v54 = v53;
          v55 = *(v53 + 7);
          if (v55 > v42)
          {
            v53 = *v54;
            goto LABEL_105;
          }

          if (v55 >= v42)
          {
            break;
          }

          v53 = v54[1];
          if (!v53)
          {
            goto LABEL_109;
          }
        }

        *(v54 + 8) = v46;
        v52 = v119[0];
        v4 = v104;
        if (!v119[0])
        {
          goto LABEL_117;
        }

        while (1)
        {
LABEL_113:
          while (1)
          {
            v56 = v52;
            v57 = *(v52 + 7);
            if (v57 <= v42)
            {
              break;
            }

            v52 = *v56;
            if (!*v56)
            {
              goto LABEL_117;
            }
          }

          if (v57 >= v42)
          {
            break;
          }

          v52 = v56[1];
          if (!v52)
          {
            goto LABEL_117;
          }
        }

        *(v56 + 8) = v10;
        goto LABEL_16;
      }

      if (v105 != -1)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          goto LABEL_16;
        }

        v99 = v99 & 0xFFFFFFFF00000000 | 0x12F3;
LABEL_64:
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v29, a3, v30, v31, v32, v33, v34, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
        goto LABEL_16;
      }

      v105 = v10;
    }

    else
    {
      if (!v28)
      {
        v38 = 1;
        if (0xDEF7BDEF7BDEF7BELL * (v4 >> 3) > 1)
        {
          v38 = 0xDEF7BDEF7BDEF7BELL * (v4 >> 3);
        }

        if (0xEF7BDEF7BDEF7BDFLL * (v4 >> 3) >= 0x84210842108421)
        {
          v38 = 0x108421084210842;
        }

        if (v38)
        {
          if (v38 <= 0x108421084210842)
          {
            operator new();
          }

          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

LABEL_171:
        __break(1u);
      }

      if (v106 != -1)
      {
        if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
        {
          goto LABEL_16;
        }

        v100 = v100 & 0xFFFFFFFF00000000 | 0x1293;
        goto LABEL_64;
      }

      v106 = v10;
    }

LABEL_16:
    v3 = (v3 + 216);
  }

  while (v3 != a3);
  v58 = v118;
  if (v118 != v119)
  {
    v59 = a1;
    if (v120[0])
    {
      while (1)
      {
        v60 = *(v58 + 7);
        v61 = v120;
        v62 = v120[0];
        do
        {
          if (*(v62 + 7) >= v60)
          {
            v61 = v62;
          }

          v62 = v62[*(v62 + 7) < v60];
        }

        while (v62);
        if (v61 == v120 || v60 < *(v61 + 7))
        {
          break;
        }

        if (*(v61 + 8) >= 2u)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v80, v81, v82, v83, v84, v85, v86, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
          }

          operator new();
        }

        v63 = v58[1];
        if (v63)
        {
          do
          {
            v64 = v63;
            v63 = *v63;
          }

          while (v63);
        }

        else
        {
          do
          {
            v64 = v58[2];
            v65 = *v64 == v58;
            v58 = v64;
          }

          while (!v65);
        }

        v58 = v64;
        if (v64 == v119)
        {
          goto LABEL_137;
        }
      }
    }

    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v73, v74, v75, v76, v77, v78, v79, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    operator new();
  }

  v59 = a1;
LABEL_137:
  *v59 = 0;
  *(v59 + 38) = 0;
  *(v59 + 16) = 0;
  *(v59 + 24) = 0;
  *(v59 + 8) = 0;
  *(v59 + 29) = 0;
  *(v59 + 40) = 0;
  *(v59 + 48) = 0;
  *(v59 + 56) = v4;
  *(v59 + 64) = 1;
  std::__tree<std::__value_type<int,webrtc::Codec>,std::__map_value_compare<int,std::__value_type<int,webrtc::Codec>,std::less<int>,true>,std::allocator<std::__value_type<int,webrtc::Codec>>>::destroy(v115[0]);
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v116, v117[0]);
  std::__tree<sigslot::_signal_base_interface *>::destroy(&v118, v119[0]);
  std::__tree<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::__map_value_compare<webrtc::AudioSendStream *,std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>,std::less<webrtc::AudioSendStream *>,true>,std::allocator<std::__value_type<webrtc::AudioSendStream *,webrtc::internal::AudioState::StreamProperties>>>::destroy(v120[0]);
}

__n128 std::optional<webrtc::VideoCodecSettings>::operator=[abi:sn200100]<webrtc::VideoCodecSettings&,void>(webrtc::Codec *a1, uint64_t a2)
{
  if (*(a1 + 248) == 1)
  {
    webrtc::Codec::operator=(a1, a2);
    result = *(a2 + 216);
    *(v4 + 225) = *(a2 + 225);
    *(v4 + 216) = result;
  }

  else
  {
    v5 = webrtc::Codec::Codec(a1, a2);
    result = *(a2 + 216);
    *(v5 + 225) = *(a2 + 225);
    *(v5 + 216) = result;
    *(v5 + 248) = 1;
  }

  return result;
}

void webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::SetRtpParameters(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = *MEMORY[0x277D85DE8];
  v8 = (*(**(a2 + 56) + 224))(*(a2 + 56));
  LOBYTE(v101) = 0;
  v104 = 0;
  webrtc::CheckRtpParametersInvalidModificationAndValues(a2 + 1032, a3, 0, 0, &v101, v8, &v98);
  if (v104 == 1)
  {
    webrtc::Codec::~Codec(&v101);
  }

  if (v98)
  {
    v95 = v98;
    if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v96, v99.__r_.__value_.__l.__data_, v99.__r_.__value_.__l.__size_);
    }

    else
    {
      v96 = v99;
    }

    v97[0] = v100[0];
    *(v97 + 3) = *(v100 + 3);
    webrtc::InvokeSetParametersCallback(a4, &v95, a1);
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      v43 = v96.__r_.__value_.__r.__words[0];
      goto LABEL_148;
    }

    goto LABEL_149;
  }

  v87 = a1;
  v9 = *(a2 + 1136);
  v10 = *(a2 + 1128);
  if (v9 == v10)
  {
LABEL_78:
    v26 = 0;
    v47 = *(a3 + 164);
    v45 = *(a2 + 1196);
    v46 = v47 ^ v45;
    if (v47 != 1)
    {
      goto LABEL_81;
    }

    goto LABEL_79;
  }

  v11 = 0;
  v12 = 160;
  while (1)
  {
    v13 = *(a3 + 96);
    if (0xF0F0F0F0F0F0F0F1 * ((*(a3 + 104) - v13) >> 4) <= v11)
    {
      goto LABEL_161;
    }

    v14 = *(v13 + v12 - 128);
    v15 = *(v10 + v12 - 128);
    v16 = v14 != 1 || v15 == 0;
    if (v16)
    {
      if (v14 != v15)
      {
        goto LABEL_75;
      }
    }

    else if (*(v13 + v12 - 132) != *(v10 + v12 - 132))
    {
      goto LABEL_75;
    }

    v17 = *(v13 + v12 - 136);
    v18 = *(v10 + v12 - 136);
    if (v17 != 1 || v18 == 0)
    {
      if (v17 != v18)
      {
        goto LABEL_75;
      }
    }

    else if (*(v13 + v12 - 140) != *(v10 + v12 - 140))
    {
      goto LABEL_75;
    }

    v20 = *(v13 + v12 - 112);
    v21 = *(v10 + v12 - 112);
    if (v20 != 1 || v21 == 0)
    {
      if (v20 != v21)
      {
        goto LABEL_75;
      }
    }

    else if (*(v13 + v12 - 120) != *(v10 + v12 - 120))
    {
      goto LABEL_75;
    }

    v23 = *(v13 + v12 - 88);
    if (v23 == 1 && *(v10 + v12 - 88))
    {
      if (*(v13 + v12 - 96) != *(v10 + v12 - 96))
      {
        goto LABEL_75;
      }
    }

    else if (v23 != *(v10 + v12 - 88))
    {
      goto LABEL_75;
    }

    v24 = *(v13 + v12 - 100);
    if (v24 == 1 && *(v10 + v12 - 100))
    {
      if (*(v13 + v12 - 104) != *(v10 + v12 - 104))
      {
        goto LABEL_75;
      }
    }

    else if (v24 != *(v10 + v12 - 100))
    {
      goto LABEL_75;
    }

    v25 = *(v13 + v12 - 40);
    if (v25 == 1 && *(v10 + v12 - 40))
    {
      v26 = 1;
      if (*(v13 + v12 - 48) != *(v10 + v12 - 48) || *(v13 + v12 - 44) != *(v10 + v12 - 44))
      {
        goto LABEL_76;
      }
    }

    else if (v25 != *(v10 + v12 - 40))
    {
      goto LABEL_75;
    }

    v27 = v13 + v12;
    v28 = v10 + v12;
    v29 = *(v13 + v12 - 56);
    if (v29 == 1)
    {
      if (*(v10 + v12 - 56))
      {
        break;
      }
    }

    if (v29 != *(v10 + v12 - 56))
    {
      goto LABEL_75;
    }

LABEL_68:
    v42 = *(v13 + v12 + 104);
    if (v42 == 1 && *(v10 + v12 + 104))
    {
      if (!webrtc::RtpCodec::operator==(v13 + v12, v10 + v12))
      {
        goto LABEL_75;
      }

      v9 = *(a2 + 1136);
      v10 = *(a2 + 1128);
    }

    else if (v42 != *(v10 + v12 + 104))
    {
      goto LABEL_75;
    }

    ++v11;
    v12 += 272;
    if (v11 >= 0xF0F0F0F0F0F0F0F1 * ((v9 - v10) >> 4))
    {
      goto LABEL_78;
    }
  }

  v30 = *(v13 + v12 - 57);
  if (v30 >= 0)
  {
    v31 = *(v13 + v12 - 57);
  }

  else
  {
    v31 = *(v13 + v12 - 72);
  }

  v32 = *(v10 + v12 - 57);
  v33 = *(v10 + v12 - 72);
  if (v32 >= 0)
  {
    v33 = *(v10 + v12 - 57);
  }

  if (v31 == v33)
  {
    v36 = *(v27 - 80);
    v34 = v27 - 80;
    v35 = v36;
    v37 = (v30 >= 0 ? v34 : v35);
    v40 = *(v28 - 80);
    v38 = v28 - 80;
    v39 = v40;
    v41 = (v32 >= 0 ? v38 : v39);
    if (!memcmp(v37, v41, v31))
    {
      goto LABEL_68;
    }
  }

LABEL_75:
  v26 = 1;
LABEL_76:
  v44 = *(a3 + 164);
  v45 = *(a2 + 1196);
  v46 = v44 ^ v45;
  if (v44 == 1)
  {
LABEL_79:
    if (v45)
    {
      v46 = *(a3 + 160) != *(a2 + 1192);
    }
  }

LABEL_81:
  if (!v26)
  {
    v60 = *(a3 + 96);
    if (*(a3 + 104) == v60)
    {
      goto LABEL_161;
    }

    v61 = *(a2 + 1136);
    v48 = *(a2 + 1128);
    if (v61 == v48)
    {
      goto LABEL_161;
    }

    v49 = *(v60 + 8) != *(v48 + 8);
    v50 = v61 - v48;
    if (!v50)
    {
      goto LABEL_110;
    }

LABEL_83:
    v51 = v50 / 272;
    v52 = *(a3 + 96);
    if (v51 <= 1)
    {
      v51 = 1;
    }

    if (0xF0F0F0F0F0F0F0F1 * ((*(a3 + 104) - v52) >> 4) <= v51 - 1)
    {
LABEL_161:
      __break(1u);
      goto LABEL_162;
    }

    v53 = 0;
    v54 = (v48 + 124);
    v55 = (v52 + 124);
    while (1)
    {
      if ((*v55 & 1) == 0 || (*(v55 - 100) == 1 ? (v57 = *(v55 - 26) < 1) : (v57 = 0), v57))
      {
        v58 = 0;
        if (*v54 != 1)
        {
          goto LABEL_87;
        }
      }

      else if (*(v55 - 76) == 1)
      {
        v58 = *(v55 - 84) > 0.0;
        if (*v54 != 1)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v58 = 1;
        if (*v54 != 1)
        {
          goto LABEL_87;
        }
      }

      if (*(v54 - 100) != 1 || *(v54 - 26) >= 1)
      {
        v56 = *(v54 - 76) != 1 || *(v54 - 84) > 0.0;
        goto LABEL_88;
      }

LABEL_87:
      v56 = 0;
LABEL_88:
      v55 += 272;
      v53 |= v58 ^ v56;
      v54 += 272;
      if (!--v51)
      {
        goto LABEL_111;
      }
    }
  }

  v48 = *(a2 + 1128);
  v49 = 1;
  v50 = *(a2 + 1136) - v48;
  if (v50)
  {
    goto LABEL_83;
  }

LABEL_110:
  v53 = 0;
LABEL_111:
  v88 = a4;
  webrtc::RtpParameters::operator=((a2 + 1032), a3);
  v62 = *(a2 + 1088);
  v63 = *(a2 + 1080);
  if (v62 != v63)
  {
    v64 = v62 - 14;
    v65 = v62 - 14;
    v66 = v62 - 14;
    do
    {
      v67 = *v66;
      v66 -= 14;
      (*v67)(v65);
      v64 -= 14;
      v16 = v65 == v63;
      v65 = v66;
    }

    while (!v16);
  }

  *(a2 + 1088) = v63;
  if ((v49 | v53))
  {
    (*(v88 + 16))(0, v88, v93);
    v94 = *(v88 + 16);
    *(v88 + 16) = absl::internal_any_invocable::EmptyManager;
    *(v88 + 24) = 0;
    webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::ReconfigureEncoder(a2, v93, v68, v69, v70, v71, v72, v73);
    (v94)(1, v93, v93);
    (*(v88 + 16))(1, v88, v88);
    *(v88 + 16) = absl::internal_any_invocable::EmptyManager;
    *(v88 + 24) = 0;
  }

  if (v46)
  {
    if (*(a2 + 72))
    {
      v74 = *(a2 + 80);
      if (v74)
      {
        if (*(a2 + 64) != 1)
        {
          v75 = 0;
          goto LABEL_124;
        }

        if (*(a2 + 1196) == 1)
        {
          v75 = *(a2 + 1192);
          goto LABEL_124;
        }

        v75 = *(a2 + 528);
        if (v75 != 1)
        {
          if (*(a2 + 525) == 1)
          {
            v83 = v75 & 0xFFFFFFFE;
            v75 = 2;
            if (v83 == 2 || (*(a2 + 524) & 1) != 0)
            {
              goto LABEL_124;
            }
          }

          else
          {
            v75 &= ~1u;
            if (v75 == 2)
            {
              goto LABEL_124;
            }
          }

          v84 = *(a2 + 80);
          v85 = (*(**(a2 + 56) + 224))(*(a2 + 56));
          v74 = v84;
          if (IsEnabled)
          {
            v75 = 3;
          }

          else
          {
            v75 = 1;
          }
        }

LABEL_124:
        LODWORD(v101) = v75;
        (*(*v74 + 40))(v74);
      }
    }
  }

  v101 = 0;
  v102 = 0;
  v103 = 0;
  v76 = *(a2 + 1128);
  v77 = *(a2 + 1136);
  if (v76 != v77)
  {
    while (*(v76 + 152) != 1)
    {
      v76 += 272;
      if (v76 == v77)
      {
        goto LABEL_138;
      }
    }

    v78 = 1 - 0x5555555555555555 * (-v101 >> 3);
    if (v78 <= 0xAAAAAAAAAAAAAAALL)
    {
      if (0x5555555555555556 * ((v103 - v101) >> 3) > v78)
      {
        v78 = 0x5555555555555556 * ((v103 - v101) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v103 - v101) >> 3) >= 0x555555555555555)
      {
        v79 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v79 = v78;
      }

      if (v79)
      {
        if (v79 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      goto LABEL_161;
    }

LABEL_162:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

LABEL_138:
  v89 = 0;
  v92[14] = 0;
  v91 = 0;
  memset(v92, 0, 13);
  __p = 0;
  webrtc::InvokeSetParametersCallback(v88, &v89, v87);
  if ((v92[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  v80 = v101;
  if (v101)
  {
    v81 = v102;
    v43 = v101;
    if (v102 != v101)
    {
      do
      {
        v82 = *(v81 - 1);
        v81 -= 3;
        if (v82 < 0)
        {
          operator delete(*v81);
        }
      }

      while (v81 != v80);
      v43 = v101;
    }

    v102 = v80;
LABEL_148:
    operator delete(v43);
  }

LABEL_149:
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }
}

uint64_t std::operator==[abi:sn200100]<webrtc::VideoCodecSettings,std::allocator<webrtc::VideoCodecSettings>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  for (i = a3; ; i += 248)
  {
    result = webrtc::Codec::operator==(v5, i);
    if (!result)
    {
      break;
    }

    if (*(v5 + 216) != *(i + 216) || *(v5 + 220) != *(i + 220) || *(v5 + 224) != *(i + 224) || *(v5 + 228) != *(i + 228) || *(v5 + 232) != *(i + 232))
    {
      return 0;
    }

    v8 = *(v5 + 240);
    if (v8 == 1 && *(i + 240))
    {
      if (*(v5 + 236) != *(i + 236))
      {
        return 0;
      }
    }

    else if (v8 != *(i + 240))
    {
      return 0;
    }

    v5 += 248;
    if (v5 == a2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t std::optional<std::vector<webrtc::VideoCodecSettings>>::operator=[abi:sn200100]<std::vector<webrtc::VideoCodecSettings>&,void>(uint64_t result, webrtc::Codec **a2)
{
  v2 = result;
  if (*(result + 24) == 1)
  {
    if (result != a2)
    {
      std::vector<webrtc::VideoCodecSettings>::__assign_with_size[abi:sn200100]<webrtc::VideoCodecSettings*,webrtc::VideoCodecSettings*>(result, *a2, a2[1], 0xEF7BDEF7BDEF7BDFLL * ((a2[1] - *a2) >> 3));
    }

    return v2;
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v3 = a2[1];
    if (v3 != *a2)
    {
      if (0xEF7BDEF7BDEF7BDFLL * ((v3 - *a2) >> 3) < 0x108421084210843)
      {
        operator new();
      }

      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    *(result + 24) = 1;
  }

  return result;
}

uint64_t webrtc::WebRtcVideoSendChannel::SetSenderParameters(webrtc::WebRtcVideoSendChannel *this, const webrtc::VideoSenderParameters *a2)
{
  v167 = *MEMORY[0x277D85DE8];
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
  {
    webrtc::MediaChannelParameters::ToString(a2, __p);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v7, v8, v9, v10, v11, v12, v13, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }
  }

  __p[0].__r_.__value_.__s.__data_[0] = 0;
  v144 = 0;
  LOBYTE(v145) = 0;
  v148 = 0;
  LOBYTE(v149) = 0;
  v150 = 0;
  LOBYTE(v151) = 0;
  v154 = 0;
  v155.__r_.__value_.__s.__data_[0] = 0;
  v156 = 0;
  v157 = 0;
  LOBYTE(v158) = 0;
  v159 = 0;
  v160 = 0;
  LOBYTE(v161) = 0;
  v162 = 0;
  if (!v14)
  {
    goto LABEL_221;
  }

  v15 = (a2 + 56);
  v16 = *(a2 + 8) - *(a2 + 7);
  v17 = v16 ? *(a2 + 7) : 0;
  v18 = *(this + 69) == *(this + 68) ? 0 : *(this + 68);
  if (!webrtc::ValidateRtpExtensions(v17, v16 >> 5, v18))
  {
    goto LABEL_221;
  }

  v19 = v137;
  v121 = a2;
  if (v137)
  {
    if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>())
    {
      goto LABEL_213;
    }

    v133.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc";
    v133.__r_.__value_.__l.__size_ = 8755;
    v133.__r_.__value_.__r.__words[2] = &v136;
    v124 = "Failure in codec list, error = ";
    v125 = &v133;
    memset(&v163, 0, sizeof(v163));
    absl::strings_internal::ExtractStringification<webrtc::RTCError>(&v163, &v137);
    if (v26 || !v27)
    {
      if (v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      if (v27 > 0x16)
      {
        operator new();
      }

      *(&__s[0].__r_.__value_.__s + 23) = v27;
      v15 = (&__s[0].__r_.__value_.__l.__data_ + v27);
      if (__s > v26 || v15 <= v26)
      {
        if (v27)
        {
          memmove(__s, v26, v27);
        }

        *v15 = 0;
        if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v163.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v163, __s[0].__r_.__value_.__l.__data_, __s[0].__r_.__value_.__l.__size_);
          v35 = &v124;
          v164 = &v124;
          if (SHIBYTE(__s[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s[0].__r_.__value_.__l.__data_);
            v35 = v164;
          }
        }

        else
        {
          v163 = __s[0];
          v35 = &v124;
          v164 = &v124;
        }

        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::ToStringVal const&)::t, v27, v28, v29, v30, v31, v32, v33, *v35[1]);
        if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
        {
          v38 = v163.__r_.__value_.__r.__words[0];
LABEL_212:
          operator delete(v38);
          goto LABEL_213;
        }

        goto LABEL_213;
      }
    }

    goto LABEL_94;
  }

  if ((v142 & 1) == 0)
  {
    goto LABEL_94;
  }

  if (v141 != v140)
  {
    if (0xEF7BDEF7BDEF7BDFLL * ((v141 - v140) >> 3) <= 0x108421084210842)
    {
      operator new();
    }

    goto LABEL_250;
  }

  v36 = 0;
  v3 = 0;
  v37 = *(this + 71);
  if (v37)
  {
    (*(*v37 + 8))(__s);
    v34 = __s[0].__r_.__value_.__r.__words[0];
  }

  else
  {
    v34 = 0;
    memset(__s, 0, 24);
  }

  v122 = 0;
  v120 = (a2 + 56);
  v123 = 0;
  v4 = 0;
  if (v34)
  {
    v2 = 0;
    size = __s[0].__r_.__value_.__l.__size_;
    v40 = v34;
    if (__s[0].__r_.__value_.__l.__size_ != v34)
    {
      do
      {
        while (1)
        {
          if (*(size - 48))
          {
            operator delete(*(size - 40));
          }

          v15 = (size - 96);
          std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(size - 72, *(size - 64));
          if (*(size - 73) < 0)
          {
            break;
          }

          size -= 96;
          if (v15 == v34)
          {
            goto LABEL_48;
          }
        }

        operator delete(*v15);
        size -= 96;
      }

      while (v15 != v34);
LABEL_48:
      v40 = __s[0].__r_.__value_.__r.__words[0];
    }

    __s[0].__r_.__value_.__l.__size_ = v34;
    operator delete(v40);
    v36 = 0;
  }

  if (*(a2 + 80) != 1)
  {
    v41 = (*(**(this + 13) + 224))(*(this + 13));
    (*(*v41 + 16))(&v163);
    if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v163.__r_.__value_.__l.__data_);
    }

    v163.__r_.__value_.__s.__data_[0] = 0;
    v165 = 0;
    if (!*(this + 20))
    {
LABEL_72:
      v2 = __p;
      v49 = *(this + 62);
      v50 = *(this + 63);
      if (v50 == v49)
      {
        if (v49 == v50)
        {
          goto LABEL_92;
        }

        v51 = 0;
        while (webrtc::Codec::operator==(v49, v51) && *(v49 + 216) == *(v51 + 216) && *(v49 + 220) == *(v51 + 220) && *(v49 + 224) == *(v51 + 224) && *(v49 + 228) == *(v51 + 228) && *(v49 + 232) == *(v51 + 232))
        {
          v52 = *(v49 + 240);
          v53 = *(v51 + 240);
          if (v52 == 1 && *(v51 + 240))
          {
            v52 = *(v49 + 236);
            v53 = *(v51 + 236);
          }

          if (v52 != v53)
          {
            break;
          }

          v49 += 248;
          v51 += 248;
          if (v49 == v50)
          {
            goto LABEL_92;
          }
        }
      }

      if (v144 == 1)
      {
        webrtc::Codec::~Codec(__p);
        v144 = 0;
      }

      if (v148 == 1)
      {
        std::vector<webrtc::VideoCodecSettings>::__assign_with_size[abi:sn200100]<webrtc::VideoCodecSettings*,webrtc::VideoCodecSettings*>(&v145, 0, 0, 0);
      }

      else
      {
        v145 = 0;
        v146 = 0;
        v147 = 0;
        v148 = 1;
      }

LABEL_92:
      v119 = v19;
      v15 = 0;
      v124 = 0;
      v125 = 0;
      v126 = 0;
      if (*(this + 20))
      {
        v54 = 0;
LABEL_96:
        v55 = *(this + 66);
        v56 = *(this + 65);
        if (v55 - v56 == v15 - v54)
        {
          if (v56 == v55)
          {
            goto LABEL_117;
          }

          v57 = v54;
          while (webrtc::Codec::operator==(v56, v57) && *(v56 + 216) == *(v57 + 216) && *(v56 + 220) == *(v57 + 220) && *(v56 + 224) == *(v57 + 224) && *(v56 + 228) == *(v57 + 228) && *(v56 + 232) == *(v57 + 232))
          {
            v58 = *(v56 + 240);
            v59 = *(v57 + 240);
            if (v58 == 1 && *(v57 + 240))
            {
              v58 = *(v56 + 236);
              v59 = *(v57 + 236);
            }

            if (v58 != v59)
            {
              break;
            }

            v56 += 248;
            v57 += 248;
            if (v56 == v55)
            {
              goto LABEL_117;
            }
          }
        }

        if (v150 == 1)
        {
          std::vector<webrtc::VideoCodecSettings>::__assign_with_size[abi:sn200100]<webrtc::VideoCodecSettings*,webrtc::VideoCodecSettings*>(&v2[12], v54, v15, 0xEF7BDEF7BDEF7BDFLL * ((v15 - v54) >> 3));
          goto LABEL_117;
        }

        v2[12].__r_.__value_.__r.__words[0] = 0;
        v2[12].__r_.__value_.__l.__size_ = 0;
        v2[12].__r_.__value_.__r.__words[2] = 0;
        if (v15 == v54)
        {
          v150 = 1;
LABEL_117:
          v60 = v4;
          v118 = v3;
          v61 = *(a2 + 88);
          if (v61 != (*(*this + 64))(this))
          {
            v157 = *(a2 + 88) | 0x100;
          }

          v62 = (*(**(this + 13) + 224))(*(this + 13));
          webrtc::FilterRtpExtensions(v120, webrtc::RtpExtension::IsSupportedForVideo, 1, v62, __s);
          v63 = *(this + 69);
          v64 = *(this + 68);
          v65 = __s[0].__r_.__value_.__l.__size_;
          v66 = __s[0].__r_.__value_.__r.__words[0];
          v67 = __s[0].__r_.__value_.__l.__size_ - __s[0].__r_.__value_.__r.__words[0];
          if (v63 - v64 == __s[0].__r_.__value_.__l.__size_ - __s[0].__r_.__value_.__r.__words[0])
          {
            if (v64 == v63)
            {
              goto LABEL_153;
            }

            v68 = 0;
            while (1)
            {
              v69 = v66 + v68;
              v70 = *(v64 + v68 + 23);
              if (v70 >= 0)
              {
                v20 = *(v64 + v68 + 23);
              }

              else
              {
                v20 = *(v64 + v68 + 8);
              }

              v71 = *(v69 + 23);
              v72 = v71;
              if ((v71 & 0x80u) != 0)
              {
                v71 = *(v69 + 8);
              }

              if (v20 != v71)
              {
                break;
              }

              v73 = v70 >= 0 ? (v64 + v68) : *(v64 + v68);
              v74 = v72 >= 0 ? (v66 + v68) : *v69;
              if (memcmp(v73, v74, v20) || *(v64 + v68 + 24) != *(v66 + v68 + 24) || *(v64 + v68 + 28) != *(v66 + v68 + 28))
              {
                break;
              }

              v68 += 32;
              if (v64 + v68 == v63)
              {
                goto LABEL_153;
              }
            }
          }

          if (v65 != v66)
          {
            if ((v67 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          if (v154)
          {
            v75 = v151;
            if (v151)
            {
              v76 = v152;
              v77 = v151;
              if (v152 != v151)
              {
                do
                {
                  v78 = *(v76 - 9);
                  v76 -= 4;
                  if (v78 < 0)
                  {
                    operator delete(*v76);
                  }
                }

                while (v76 != v75);
                v77 = v151;
              }

              v152 = v75;
              operator delete(v77);
            }

            v151 = 0;
            v152 = 0;
            v153 = 0;
          }

          else
          {
            v151 = 0;
            v152 = 0;
            v153 = 0;
            v154 = 1;
          }

LABEL_153:
          v79 = (v121 + 8);
          v80 = *(v121 + 31);
          v81 = *(v121 + 2);
          if (v80 >= 0)
          {
            v82 = *(v121 + 31);
          }

          else
          {
            v82 = *(v121 + 2);
          }

          v83 = *(this + 631);
          v84 = v83;
          if ((v83 & 0x80u) != 0)
          {
            v83 = *(this + 77);
          }

          v4 = v60;
          if (v82 != v83 || (v80 >= 0 ? (v85 = v121 + 8) : (v85 = v79->__r_.__value_.__r.__words[0]), v84 >= 0 ? (v86 = this + 608) : (v86 = *(this + 76)), memcmp(v85, v86, v82)))
          {
            if (v156 == 1)
            {
              if (&v155 != v79)
              {
                if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
                {
                  if (v80 >= 0)
                  {
                    v117 = v121 + 8;
                  }

                  else
                  {
                    v117 = v79->__r_.__value_.__r.__words[0];
                  }

                  std::string::__assign_no_alias<false>(&v155, v117, v82);
                }

                else if (v80 < 0)
                {
                  std::string::__assign_no_alias<true>(&v155, v79->__r_.__value_.__l.__data_, v81);
                }

                else
                {
                  *&v155.__r_.__value_.__l.__data_ = *&v79->__r_.__value_.__l.__data_;
                  v155.__r_.__value_.__r.__words[2] = *(v121 + 3);
                }
              }
            }

            else
            {
              if (v80 < 0)
              {
                std::string::__init_copy_ctor_external(&v155, v79->__r_.__value_.__l.__data_, v81);
              }

              else
              {
                *&v155.__r_.__value_.__l.__data_ = *&v79->__r_.__value_.__l.__data_;
                v155.__r_.__value_.__r.__words[2] = *(v121 + 3);
              }

              v156 = 1;
            }
          }

          v87 = *(v121 + 21);
          if (v87 >= -1 && v87 != *(this + 171))
          {
            if (!v87)
            {
              v87 = -1;
            }

            v158 = v87;
            v159 = 1;
          }

          v88 = *(v121 + 89);
          v43 = v123;
          if (v88 == *(this + 689))
          {
            v89 = *(v121 + 81);
            if (v89 == *(this + 681))
            {
              goto LABEL_182;
            }
          }

          else
          {
            v160 = v88 | 0x100;
            v89 = *(v121 + 81);
            if (v89 == *(this + 681))
            {
LABEL_182:
              v90 = __s[0].__r_.__value_.__r.__words[0];
              v3 = v118;
              if (!__s[0].__r_.__value_.__r.__words[0])
              {
LABEL_196:
                v36 = v122;
                if (v54)
                {
                  v95 = v54;
                  if (v15 != v54)
                  {
                    do
                    {
                      v15 -= 31;
                      webrtc::Codec::~Codec(v15);
                    }

                    while (v15 != v54);
                    v95 = v124;
                  }

                  v125 = v54;
                  operator delete(v95);
                }

                if (v165 == 1)
                {
                  webrtc::Codec::~Codec(&v163);
                }

                v19 = v119;
                goto LABEL_204;
              }

LABEL_189:
              v92 = __s[0].__r_.__value_.__l.__size_;
              v93 = v90;
              if (__s[0].__r_.__value_.__l.__size_ != v90)
              {
                do
                {
                  v94 = *(v92 - 9);
                  v92 -= 4;
                  if (v94 < 0)
                  {
                    operator delete(*v92);
                  }
                }

                while (v92 != v90);
                v93 = __s[0].__r_.__value_.__r.__words[0];
              }

              __s[0].__r_.__value_.__l.__size_ = v90;
              operator delete(v93);
              goto LABEL_196;
            }
          }

          if (v89)
          {
            v91 = 2;
          }

          else
          {
            v91 = 1;
          }

          v161 = v91;
          v162 = 1;
          v90 = __s[0].__r_.__value_.__r.__words[0];
          v3 = v118;
          if (!__s[0].__r_.__value_.__r.__words[0])
          {
            goto LABEL_196;
          }

          goto LABEL_189;
        }

        if (0xEF7BDEF7BDEF7BDFLL * ((v15 - v54) >> 3) <= 0x108421084210842)
        {
          operator new();
        }

LABEL_250:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

LABEL_95:
      v54 = v15;
      goto LABEL_96;
    }

    webrtc::RtpParameters::RtpParameters(&v133, (*(*(this + 18) + 40) + 1032));
    if (v135 != v134)
    {
      if (*(v134 + 264) == 1)
      {
        v44 = v134;
        v45 = v135;
        if (v134 != v135)
        {
          v46 = v134 + 160;
          do
          {
            if (*(v44 + 264) == 1)
            {
              *(v44 + 160) = &unk_28829C078;
              std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v44 + 240, *(v44 + 248));
              v47 = *(v44 + 216);
              if (v47)
              {
                *(v44 + 224) = v47;
                operator delete(v47);
              }

              if (*(v44 + 191) < 0)
              {
                operator delete(*(v44 + 168));
              }

              *(v44 + 264) = 0;
            }

            v44 += 272;
            v46 += 272;
          }

          while (v44 != v45);
        }

        v48 = *(*(this + 18) + 40);
        v128 = absl::internal_any_invocable::EmptyManager;
        v129 = 0;
        webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::SetRtpParameters(v130, v48, &v133, v127);
        if (v132 < 0)
        {
          operator delete(v131);
        }

        (v128)(1, v127, v127);
      }

      webrtc::RtpParameters::~RtpParameters(&v133.__r_.__value_.__l.__data_);
      goto LABEL_72;
    }

LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v43 = 0;
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v42, v20, v21, v22, v23, v24, v25, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

LABEL_204:
  if (v43)
  {
    while (v4 != v43)
    {
      v4 = (v4 - 248);
      webrtc::Codec::~Codec(v4);
    }

    operator delete(v43);
  }

  if (v3)
  {
    while (v36 != v3)
    {
      v36 = (v36 - 248);
      webrtc::Codec::~Codec(v36);
    }

    v38 = v3;
    goto LABEL_212;
  }

LABEL_213:
  if (v142 == 1)
  {
    v96 = v140;
    if (v140)
    {
      v97 = v141;
      v98 = v140;
      if (v141 != v140)
      {
        do
        {
          webrtc::Codec::~Codec((v97 - 248));
        }

        while (v97 != v96);
        v98 = v140;
      }

      v141 = v96;
      operator delete(v98);
    }
  }

  if (v139 < 0)
  {
    operator delete(v138);
    if (v19)
    {
      goto LABEL_221;
    }
  }

  else if (v19)
  {
LABEL_221:
    v99 = 0;
    goto LABEL_222;
  }

  if (v148 == 1)
  {
    v101 = v145;
    for (i = v146; v101 != i; v101 = (v101 + 248))
    {
      if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
      {
        v3 = v3 & 0xFFFFFFFF00000000 | 0x26A1;
        webrtc::Codec::ToString(v101, &v163);
        webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*> const&)::t, v103, v104, v105, v106, v107, v108, v109, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
        if (SHIBYTE(v163.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v163.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  if ((this + 600) != v121)
  {
    v110 = (this + 608);
    v111 = *(v121 + 31);
    if (*(this + 631) < 0)
    {
      if (v111 >= 0)
      {
        v113 = v121 + 8;
      }

      else
      {
        v113 = *(v121 + 1);
      }

      if (v111 >= 0)
      {
        v114 = *(v121 + 31);
      }

      else
      {
        v114 = *(v121 + 2);
      }

      std::string::__assign_no_alias<false>(v110, v113, v114);
    }

    else if ((*(v121 + 31) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v110, *(v121 + 1), *(v121 + 2));
    }

    else
    {
      v112 = *(v121 + 8);
      *(this + 78) = *(v121 + 3);
      *&v110->__r_.__value_.__l.__data_ = v112;
    }

    std::vector<webrtc::Codec>::__assign_with_size[abi:sn200100]<webrtc::Codec*,webrtc::Codec*>(this + 79, *(v121 + 4), *(v121 + 5), 0x84BDA12F684BDA13 * ((*(v121 + 5) - *(v121 + 4)) >> 3));
    std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>(this + 82, *(v121 + 7), *(v121 + 8), (*(v121 + 8) - *(v121 + 7)) >> 5);
  }

  v115 = *(v121 + 40);
  *(this + 682) = *(v121 + 82);
  *(this + 340) = v115;
  v116 = *(v121 + 21);
  *(this + 688) = *(v121 + 88);
  *(this + 171) = v116;
  *(this + 689) = *(v121 + 89);
  webrtc::WebRtcVideoSendChannel::ApplyChangedParams(this, __p, v20, v21, v22, v23, v24, v25);
  v99 = 1;
LABEL_222:
  webrtc::WebRtcVideoSendChannel::ChangedSenderParameters::~ChangedSenderParameters(&__p[0].__r_.__value_.__l.__data_);
  return v99;
}

void webrtc::MediaChannelParameters::ToString(webrtc::MediaChannelParameters *this@<X0>, std::string *a2@<X8>)
{
  memset(&v47, 0, sizeof(v47));
  if (&v47 > "{" || &v47.__r_.__value_.__l.__data_ + 1 <= "{")
  {
    v47.__r_.__value_.__s.__data_[0] = 123;
    *(&v47.__r_.__value_.__s + 23) = 1;
    (*(*this + 16))(&v45);
    v3 = v45;
    if (v45 != v46)
    {
      v4 = "";
      while (1)
      {
        v5 = strlen(v4);
        v6 = v5;
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = 22;
        }

        else
        {
          v7 = (v47.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v47.__r_.__value_.__l.__size_;
        }

        if (v7 - size < v5)
        {
          std::string::__grow_by_and_replace(&v47, v7, size + v5 - v7, size, size, 0, v5, v4);
          v9 = *(v3 + 55);
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

          goto LABEL_16;
        }

        if (!v5)
        {
          goto LABEL_30;
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v47;
        }

        else
        {
          v12 = v47.__r_.__value_.__r.__words[0];
        }

        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        if (v12 + size <= v4 && v12 + size + v5 > v4)
        {
          goto LABEL_116;
        }

        memcpy(v12 + size, v4, v5);
        v14 = size + v6;
        if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          break;
        }

        v47.__r_.__value_.__l.__size_ = size + v6;
        v12->__r_.__value_.__s.__data_[v14] = 0;
        v9 = *(v3 + 55);
        if ((v9 & 0x8000000000000000) == 0)
        {
LABEL_31:
          v10 = (v3 + 4);
          v11 = v9 == 0;
          goto LABEL_32;
        }

LABEL_16:
        v10 = v3[4];
        v9 = v3[5];
        v11 = v9 == 0;
        if (!v10 && v9)
        {
          goto LABEL_116;
        }

LABEL_32:
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = 22;
        }

        else
        {
          v15 = (v47.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v16 = v47.__r_.__value_.__l.__size_;
        }

        if (v15 - v16 >= v9)
        {
          if (!v11)
          {
            if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v17 = &v47;
            }

            else
            {
              v17 = v47.__r_.__value_.__r.__words[0];
            }

            if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_116;
            }

            v18 = v17 + v16;
            if (v17 + v16 <= v10 && &v18[v9] > v10)
            {
              goto LABEL_116;
            }

            v19 = v9;
            memmove(v18, v10, v9);
            v20 = v16 + v19;
            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              v47.__r_.__value_.__l.__size_ = v16 + v19;
            }

            else
            {
              *(&v47.__r_.__value_.__s + 23) = v20 & 0x7F;
            }

            v17->__r_.__value_.__s.__data_[v20] = 0;
          }
        }

        else
        {
          std::string::__grow_by_and_replace(&v47, v15, v16 + v9 - v15, v16, v16, 0, v9, v10);
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = 22;
        }

        else
        {
          v21 = (v47.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v47.__r_.__value_.__l.__size_;
        }

        if (v21 - v22 >= 2)
        {
          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = &v47;
          }

          else
          {
            v26 = v47.__r_.__value_.__r.__words[0];
          }

          v27 = (v26 + v22);
          if (v26 + v22 <= ": " && v27 + 1 > ": ")
          {
            goto LABEL_116;
          }

          *v27 = 8250;
          v28 = v22 + 2;
          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            v47.__r_.__value_.__l.__size_ = v22 + 2;
            v26->__r_.__value_.__s.__data_[v28] = 0;
            v23 = *(v3 + 79);
            if ((v23 & 0x8000000000000000) == 0)
            {
LABEL_61:
              v24 = (v3 + 7);
              v25 = v23 == 0;
              goto LABEL_71;
            }
          }

          else
          {
            *(&v47.__r_.__value_.__s + 23) = v28 & 0x7F;
            v26->__r_.__value_.__s.__data_[v28] = 0;
            v23 = *(v3 + 79);
            if ((v23 & 0x8000000000000000) == 0)
            {
              goto LABEL_61;
            }
          }
        }

        else
        {
          std::string::__grow_by_and_replace(&v47, v21, v22 - v21 + 2, v22, v22, 0, 2uLL, ": ");
          v23 = *(v3 + 79);
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_61;
          }
        }

        v24 = v3[7];
        v23 = v3[8];
        v25 = v23 == 0;
        if (!v24 && v23)
        {
          goto LABEL_116;
        }

LABEL_71:
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = 22;
        }

        else
        {
          v29 = (v47.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v30 = v47.__r_.__value_.__l.__size_;
        }

        if (v29 - v30 < v23)
        {
          std::string::__grow_by_and_replace(&v47, v29, v30 + v23 - v29, v30, v30, 0, v23, v24);
          v31 = v3[1];
          if (v31)
          {
            goto LABEL_90;
          }

          goto LABEL_95;
        }

        if (v25)
        {
          goto LABEL_89;
        }

        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v47;
        }

        else
        {
          v32 = v47.__r_.__value_.__r.__words[0];
        }

        if ((v23 & 0x8000000000000000) != 0)
        {
          goto LABEL_116;
        }

        v33 = v32 + v30;
        if (v32 + v30 <= v24 && &v33[v23] > v24)
        {
          goto LABEL_116;
        }

        v34 = v23;
        memmove(v33, v24, v23);
        v35 = v30 + v34;
        if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          *(&v47.__r_.__value_.__s + 23) = v35 & 0x7F;
          v32->__r_.__value_.__s.__data_[v35] = 0;
LABEL_89:
          v31 = v3[1];
          if (v31)
          {
            goto LABEL_90;
          }

          goto LABEL_95;
        }

        v47.__r_.__value_.__l.__size_ = v30 + v34;
        v32->__r_.__value_.__s.__data_[v35] = 0;
        v31 = v3[1];
        if (v31)
        {
          do
          {
LABEL_90:
            v36 = v31;
            v31 = *v31;
          }

          while (v31);
          goto LABEL_7;
        }

        do
        {
LABEL_95:
          v36 = v3[2];
          v37 = *v36 == v3;
          v3 = v36;
        }

        while (!v37);
LABEL_7:
        v4 = ", ";
        v3 = v36;
        if (v36 == v46)
        {
          goto LABEL_98;
        }
      }

      *(&v47.__r_.__value_.__s + 23) = v14 & 0x7F;
      v12->__r_.__value_.__s.__data_[v14] = 0;
LABEL_30:
      v9 = *(v3 + 55);
      if ((v9 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }

LABEL_98:
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v45, v46[0]);
    v38 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = 22;
    }

    else
    {
      v39 = (v47.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v47.__r_.__value_.__l.__size_;
    }

    if (v39 == v38)
    {
      std::string::__grow_by_and_replace(&v47, v39, 1uLL, v39, v39, 0, 1uLL, "}");
      v40 = a2;
LABEL_115:
      *v40 = v47;
      return;
    }

    v41 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v41 = v47.__r_.__value_.__r.__words[0];
    }

    if (v41 + v38 > "}" || &v41->__r_.__value_.__l.__data_ + v38 + 1 <= "}")
    {
      v41->__r_.__value_.__s.__data_[v38] = 125;
      v43 = v38 + 1;
      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        v47.__r_.__value_.__l.__size_ = v43;
      }

      else
      {
        *(&v47.__r_.__value_.__s + 23) = v43 & 0x7F;
      }

      v40 = a2;
      v41->__r_.__value_.__s.__data_[v43] = 0;
      goto LABEL_115;
    }
  }

LABEL_116:
  __break(1u);
}

void webrtc::WebRtcVideoSendChannel::ApplyChangedParams(webrtc::WebRtcVideoSendChannel *this, const webrtc::WebRtcVideoSendChannel::ChangedSenderParameters *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (this + 496);
  v11 = *(a2 + 280) != 1 || v10 == (a2 + 256);
  if (v11)
  {
    v12 = *(a2 + 248);
    if (v12 != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    std::vector<webrtc::VideoCodecSettings>::__assign_with_size[abi:sn200100]<webrtc::VideoCodecSettings*,webrtc::VideoCodecSettings*>(v10, *(a2 + 32), *(a2 + 33), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 33) - *(a2 + 32)) >> 3));
    v12 = *(a2 + 248);
    if (v12 != 1)
    {
      goto LABEL_14;
    }
  }

  if (*(this + 488) != v12)
  {
    v14 = (this + 240);
    if (!*(this + 488))
    {
      webrtc::Codec::Codec(v14, a2);
      v18 = *(a2 + 216);
      *(this + 465) = *(a2 + 225);
      *(this + 456) = v18;
      *(this + 488) = 1;
      if (*(a2 + 312) != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    webrtc::Codec::~Codec(v14);
    *(this + 488) = 0;
LABEL_14:
    if (*(a2 + 312) != 1)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  webrtc::Codec::operator=(this + 240, a2);
  v13 = *(a2 + 216);
  *(this + 465) = *(a2 + 225);
  *(this + 456) = v13;
  if (*(a2 + 312) != 1)
  {
LABEL_26:
    v19 = *(this + 66);
    v20 = *(this + 65);
    while (v19 != v20)
    {
      webrtc::Codec::~Codec((v19 - 248));
    }

    *(this + 66) = v20;
    if (*(a2 + 385) == 1)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

LABEL_15:
  if (this + 520 != a2 + 288)
  {
    std::vector<webrtc::VideoCodecSettings>::__assign_with_size[abi:sn200100]<webrtc::VideoCodecSettings*,webrtc::VideoCodecSettings*>(this + 65, *(a2 + 36), *(a2 + 37), 0xEF7BDEF7BDEF7BDFLL * ((*(a2 + 37) - *(a2 + 36)) >> 3));
  }

  if (*(a2 + 385) == 1)
  {
LABEL_29:
    (*(*this + 56))(this, *(a2 + 384));
    v15 = a2 + 320;
    v16 = (this + 544);
    if (*(a2 + 344) == 1 && v16 != v15)
    {
      goto LABEL_33;
    }

LABEL_23:
    if (*(a2 + 248))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_18:
  v15 = a2 + 320;
  v16 = (this + 544);
  if (*(a2 + 344) != 1 || v16 == v15)
  {
    goto LABEL_23;
  }

LABEL_33:
  std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>(v16, *(a2 + 40), *(a2 + 41), (*(a2 + 41) - *(a2 + 40)) >> 5);
  if (*(a2 + 248))
  {
    goto LABEL_35;
  }

LABEL_34:
  if (*(a2 + 392) != 1)
  {
    goto LABEL_46;
  }

LABEL_35:
  if (*(this + 171) != -1)
  {
    if (*(this + 488) != 1)
    {
      goto LABEL_41;
    }

LABEL_39:
    webrtc::GetBitrateConfigForCodec((this + 240), a2);
    *(this + 588) = v22;
    *(this + 149) = v23;
    if ((*(a2 + 248) & 1) == 0)
    {
      *(this + 148) = -1;
    }

    goto LABEL_41;
  }

  *(this + 149) = -1;
  if (*(this + 488) == 1)
  {
    goto LABEL_39;
  }

LABEL_41:
  v24 = *(this + 171);
  if ((v24 & 0x80000000) == 0)
  {
    if (!v24)
    {
      v24 = -1;
    }

    *(this + 149) = v24;
  }

  v25 = (*(**(this + 13) + 104))(*(this + 13));
  (*(*v25 + 184))(v25, this + 588);
LABEL_46:
  v26 = *(this + 18);
  v50 = this;
  v27 = this + 152;
  if (v26 != this + 152)
  {
    v28 = (a2 + 352);
    do
    {
      v29 = *(v26 + 5);
      v30 = *(a2 + 404);
      if (v30 == 1)
      {
        v32 = *(a2 + 100);
        *(v29 + 160) = v32;
        *(v29 + 1184) = v32 == 2;
        if (*(a2 + 385) != 1)
        {
LABEL_51:
          if (*(a2 + 344) != 1)
          {
            goto LABEL_52;
          }

          goto LABEL_61;
        }
      }

      else if (*(a2 + 385) != 1)
      {
        goto LABEL_51;
      }

      *(v29 + 176) = *(a2 + 384);
      v30 = 1;
      if (*(a2 + 344) != 1)
      {
LABEL_52:
        if (*(a2 + 376) != 1)
        {
          goto LABEL_53;
        }

        goto LABEL_66;
      }

LABEL_61:
      if ((v29 + 184) != v15)
      {
        std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((v29 + 184), *(a2 + 40), *(a2 + 41), (*(a2 + 41) - *(a2 + 40)) >> 5);
        if ((*(a2 + 344) & 1) == 0)
        {
          __break(1u);
          goto LABEL_107;
        }
      }

      if ((v29 + 1104) != v15)
      {
        std::vector<webrtc::RtpExtension>::__assign_with_size[abi:sn200100]<webrtc::RtpExtension*,webrtc::RtpExtension*>((v29 + 1104), *(a2 + 40), *(a2 + 41), (*(a2 + 41) - *(a2 + 40)) >> 5);
      }

      v30 = 1;
      if (*(a2 + 376) != 1)
      {
LABEL_53:
        if (*(a2 + 392) != 1)
        {
          goto LABEL_54;
        }

        goto LABEL_79;
      }

LABEL_66:
      v33 = (v29 + 136);
      if ((v29 + 136) == v28)
      {
        goto LABEL_78;
      }

      v34 = *(a2 + 375);
      if (*(v29 + 159) < 0)
      {
        if (v34 >= 0)
        {
          v36 = a2 + 352;
        }

        else
        {
          v36 = *(a2 + 44);
        }

        if (v34 >= 0)
        {
          v37 = *(a2 + 375);
        }

        else
        {
          v37 = *(a2 + 45);
        }

        std::string::__assign_no_alias<false>(v33, v36, v37);
LABEL_78:
        v30 = 1;
        if (*(a2 + 392) != 1)
        {
          goto LABEL_54;
        }

        goto LABEL_79;
      }

      if ((*(a2 + 375) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v33, *(a2 + 44), *(a2 + 45));
        v30 = 1;
        if (*(a2 + 392) != 1)
        {
LABEL_54:
          if (*(a2 + 397) != 1)
          {
            goto LABEL_80;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v35 = *v28;
        *(v29 + 152) = *(a2 + 46);
        *&v33->__r_.__value_.__l.__data_ = v35;
        v30 = 1;
        if (*(a2 + 392) != 1)
        {
          goto LABEL_54;
        }
      }

LABEL_79:
      *(v29 + 532) = *(a2 + 97);
      v53 = absl::internal_any_invocable::EmptyManager;
      v54 = 0;
      webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::ReconfigureEncoder(v29, v52, a3, a4, a5, a6, a7, a8);
      (v53)(1, v52, v52);
      if (*(a2 + 397) != 1)
      {
LABEL_80:
        if (*(a2 + 248) != 1)
        {
          goto LABEL_85;
        }

        goto LABEL_81;
      }

LABEL_55:
      *(v29 + 536) = *(a2 + 396);
      if ((*(a2 + 248) & 1) == 0)
      {
        if (*(v29 + 792) == 1)
        {
          webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::SetCodec(v29, v29 + 544, (v29 + 800));
          v31 = *(v26 + 1);
          if (v31)
          {
            goto LABEL_92;
          }

          goto LABEL_94;
        }

LABEL_85:
        if (v30)
        {
          if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>() & 1) == 0)
          {
            webrtc::webrtc_logging_impl::Log("\r\t", v41, v42, v43, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
          }

          webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::RecreateWebRtcStream(v29, v41, v42, v43, v44, v45, v46, v47);
        }

        v31 = *(v26 + 1);
        if (v31)
        {
          goto LABEL_92;
        }

        goto LABEL_94;
      }

LABEL_81:
      v38 = *(a2 + 312);
      memset(__p, 0, sizeof(__p));
      if (v38 == 1)
      {
        v40 = *(a2 + 36);
        v39 = *(a2 + 37);
        if (v39 != v40)
        {
          if (0xEF7BDEF7BDEF7BDFLL * ((v39 - v40) >> 3) < 0x108421084210843)
          {
            operator new();
          }

LABEL_107:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }
      }

      webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::SetCodec(v29, a2, __p);
      v31 = *(v26 + 1);
      if (v31)
      {
        do
        {
LABEL_92:
          v48 = v31;
          v31 = *v31;
        }

        while (v31);
        goto LABEL_48;
      }

      do
      {
LABEL_94:
        v48 = *(v26 + 2);
        v11 = *v48 == v26;
        v26 = v48;
      }

      while (!v11);
LABEL_48:
      v26 = v48;
    }

    while (v48 != v27);
  }

  if ((*(a2 + 248) & 1) != 0 || *(a2 + 404) == 1)
  {
    v49 = *(v50 + 142);
    if (v49)
    {

      v49(v50 + 1112);
    }
  }
}

void webrtc::WebRtcVideoSendChannel::RequestEncoderFallback(webrtc::WebRtcVideoSendChannel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = *(this + 10);
  {
    v10 = *(this + 11);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
    }

    operator new();
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((*(this + 63) - *(this + 62)) >> 3) > 1)
  {
    LOBYTE(v31[0]) = 0;
    v33 = 0;
    LOBYTE(v34) = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::optional<std::vector<webrtc::VideoCodecSettings>>::operator=[abi:sn200100]<std::vector<webrtc::VideoCodecSettings>&,void>(&v34, this + 62);
    if ((v36 & 1) == 0)
    {
      goto LABEL_22;
    }

    v18 = v34;
    v19 = v35;
    if (v35 == v34)
    {
      goto LABEL_22;
    }

    if ((v34 + 248) != v35)
    {
      do
      {
        v20 = (v18 + 248);
        webrtc::Codec::operator=(v18, v18 + 248);
        *(v18 + 216) = *(v18 + 29);
        *(v18 + 225) = *(v18 + 473);
        v21 = (v18 + 496);
        v18 = (v18 + 248);
      }

      while (v21 != v19);
      v19 = v35;
      v18 = v20;
    }

    while (v19 != v18)
    {
      v19 = (v19 - 248);
      webrtc::Codec::~Codec(v19);
    }

    v35 = v18;
    if ((v36 & 1) == 0 || (v22 = v34, v34 == v18))
    {
LABEL_22:
      __break(1u);
    }

    if (v33 == 1)
    {
      webrtc::Codec::operator=(v31, v34);
      v29 = *(v22 + 216);
      *(v32 + 9) = *(v22 + 225);
      v32[0] = v29;
    }

    else
    {
      webrtc::Codec::Codec(v31, v34);
      v30 = *(v22 + 216);
      *(v32 + 9) = *(v22 + 225);
      v32[0] = v30;
      v33 = 1;
    }

    webrtc::WebRtcVideoSendChannel::ApplyChangedParams(this, v31, v23, v24, v25, v26, v27, v28);
    webrtc::WebRtcVideoSendChannel::ChangedSenderParameters::~ChangedSenderParameters(v31);
  }

  else if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log("\r\t", v11, v12, v13, v14, v15, v16, v17, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }
}

void webrtc::WebRtcVideoSendChannel::RequestEncoderSwitch(webrtc::WebRtcVideoSendChannel *this, const webrtc::SdpVideoFormat *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v89 = *MEMORY[0x277D85DE8];
  v10 = *(this + 10);
  {
    v12 = *(v11 + 11);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 1u, memory_order_relaxed);
    }

    v63.__r_.__value_.__r.__words[0] = v11;
    webrtc::SdpVideoFormat::SdpVideoFormat(&v63.__r_.__value_.__r.__words[1], a2);
    v69 = v8;
    operator new();
  }

  v58 = v8;
  v59 = v11;
  v13 = *(v11 + 62);
  v61 = *(v11 + 63);
  if (v13 != v61)
  {
    v60 = a2 + 32;
    do
    {
      if (*(v13 + 39) < 0)
      {
        std::string::__init_copy_ctor_external(&v63, *(v13 + 16), *(v13 + 24));
        v65 = 0;
        v66 = 0;
        v64 = &v65;
        v14 = *(v13 + 168);
        v15 = (v13 + 176);
        if (v14 == (v13 + 176))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v63 = *(v13 + 16);
        v64 = &v65;
        v65 = 0;
        v66 = 0;
        v14 = *(v13 + 168);
        v15 = (v13 + 176);
        if (v14 == (v13 + 176))
        {
          goto LABEL_11;
        }
      }

      do
      {
        if (!*std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v64, &v65, v86, &v62, v14 + 4))
        {
          operator new();
        }

        v18 = v14[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v14[2];
            v20 = *v19 == v14;
            v14 = v19;
          }

          while (!v20);
        }

        v14 = v19;
      }

      while (v19 != v15);
LABEL_11:
      v67 = 0;
      webrtc::SdpVideoFormat::IsSameCodec(a2, &v63);
      v17 = v16;
      if (v67)
      {
        operator delete(v68);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v64, v65);
        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_13:
          if (v17)
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }
      }

      else
      {
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v64, v65);
        if ((SHIBYTE(v63.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_13;
        }
      }

      operator delete(v63.__r_.__value_.__l.__data_);
      if (v17)
      {
LABEL_33:
        webrtc::Codec::Codec(v86, v13);
        v28 = *(v13 + 216);
        *&v88[9] = *(v13 + 225);
        *v88 = v28;
        v29 = *(a2 + 3);
        if (v29 == v60)
        {
LABEL_34:
          v30 = v59;
          if (*(v59 + 488) == 1 && webrtc::Codec::operator==(v59 + 240, v86) && *(v59 + 114) == *v88 && *(v59 + 115) == *&v88[4] && *(v59 + 116) == *&v88[8] && *(v59 + 117) == *&v88[12] && *(v59 + 118) == *&v88[16])
          {
            v31 = *(v59 + 480);
            if (v31 == 1 && v88[24])
            {
              v30 = v59;
              if (*(v59 + 119) == *&v88[20])
              {
LABEL_95:
                webrtc::Codec::~Codec(v86);
                return;
              }
            }

            else
            {
              v30 = v59;
              if (v31 == v88[24])
              {
                goto LABEL_95;
              }
            }
          }

          v63.__r_.__value_.__s.__data_[0] = 0;
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          webrtc::Codec::Codec(&v63, v86);
          v70[0] = *v88;
          *(v70 + 9) = *&v88[9];
          v71 = 1;
          webrtc::WebRtcVideoSendChannel::ApplyChangedParams(v30, &v63, v52, v53, v54, v55, v56, v57);
          webrtc::WebRtcVideoSendChannel::ChangedSenderParameters::~ChangedSenderParameters(&v63.__r_.__value_.__l.__data_);
          goto LABEL_95;
        }

LABEL_46:
        v32 = v87;
        if (!v87)
        {
LABEL_72:
          operator new();
        }

        v33 = *(v29 + 55);
        if (v33 >= 0)
        {
          v34 = v29 + 4;
        }

        else
        {
          v34 = v29[4];
        }

        if (v33 >= 0)
        {
          v35 = *(v29 + 55);
        }

        else
        {
          v35 = v29[5];
        }

        while (1)
        {
          v36 = v32;
          v39 = v32[4];
          v37 = v32 + 4;
          v38 = v39;
          v40 = *(v37 + 23);
          if (v40 >= 0)
          {
            v41 = v37;
          }

          else
          {
            v41 = v38;
          }

          if (v40 >= 0)
          {
            v42 = *(v37 + 23);
          }

          else
          {
            v42 = v37[1];
          }

          if (v42 >= v35)
          {
            v43 = v35;
          }

          else
          {
            v43 = v42;
          }

          v44 = memcmp(v34, v41, v43);
          if (v44)
          {
            if (v44 < 0)
            {
              goto LABEL_53;
            }
          }

          else if (v35 < v42)
          {
LABEL_53:
            v32 = *v36;
            if (!*v36)
            {
              goto LABEL_72;
            }

            continue;
          }

          v45 = memcmp(v41, v34, v43);
          if (v45)
          {
            if ((v45 & 0x80000000) == 0)
            {
              goto LABEL_73;
            }
          }

          else if (v42 >= v35)
          {
LABEL_73:
            if (v36 == v29)
            {
              v46 = v29[1];
              if (v46)
              {
                goto LABEL_75;
              }

              do
              {
LABEL_90:
                v47 = v29[2];
                v20 = *v47 == v29;
                v29 = v47;
              }

              while (!v20);
            }

            else
            {
              v48 = *(v29 + 79);
              if ((*(v36 + 79) & 0x80000000) == 0)
              {
                if ((*(v29 + 79) & 0x80) != 0)
                {
                  std::string::__assign_no_alias<true>(v36 + 56, v29[7], v29[8]);
                  v46 = v29[1];
                  if (v46)
                  {
                    goto LABEL_75;
                  }
                }

                else
                {
                  v49 = *(v29 + 7);
                  v36[9] = v29[9];
                  *(v36 + 7) = v49;
                  v46 = v29[1];
                  if (v46)
                  {
                    goto LABEL_75;
                  }
                }

                goto LABEL_90;
              }

              if (v48 >= 0)
              {
                v50 = (v29 + 7);
              }

              else
              {
                v50 = v29[7];
              }

              if (v48 >= 0)
              {
                v51 = *(v29 + 79);
              }

              else
              {
                v51 = v29[8];
              }

              std::string::__assign_no_alias<false>((v36 + 7), v50, v51);
              v46 = v29[1];
              if (!v46)
              {
                goto LABEL_90;
              }

              do
              {
LABEL_75:
                v47 = v46;
                v46 = *v46;
              }

              while (v46);
            }

            v29 = v47;
            if (v47 == v60)
            {
              goto LABEL_34;
            }

            goto LABEL_46;
          }

          v32 = v36[1];
          if (!v32)
          {
            goto LABEL_72;
          }
        }
      }

LABEL_27:
      v13 += 248;
    }

    while (v13 != v61);
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::SdpVideoFormat::ToString(a2, &v63);
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)1,int> const&)::t, v21, v22, v23, v24, v25, v26, v27, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }
  }

  if (v58)
  {
    (*(*v59 + 216))(v59);
  }
}

void webrtc::WebRtcVideoSendChannel::GetRtpSendParameters(webrtc::WebRtcVideoSendChannel *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 19);
  if (v4)
  {
    v6 = this + 152;
    do
    {
      v7 = *(v4 + 8);
      v8 = v7 >= a2;
      v9 = v7 < a2;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *&v4[8 * v9];
    }

    while (v4);
    if (v6 != this + 152 && *(v6 + 8) <= a2)
    {
      webrtc::RtpParameters::RtpParameters(a3, (*(v6 + 5) + 1032));
      v17 = *(this + 79);
      v18 = *(this + 80);
      if (v17 == v18)
      {
        return;
      }

      v74 = *(this + 80);
      while (1)
      {
        if (*(this + 488) == 1 && *(this + 63) == v17[3])
        {
          v19 = *(a3 + 48);
          (*(*v17 + 16))(&v75, v17);
          v20 = *(a3 + 48);
          v21 = *(a3 + 56);
          v22 = *(a3 + 64);
          if (v21 < v22)
          {
            if (v19 == v21)
            {
              if (!v20)
              {
                goto LABEL_97;
              }

              webrtc::RtpCodec::RtpCodec(*(a3 + 56), &v75);
              *v21 = &unk_28829C0B8;
              *(v21 + 104) = v84;
              *(a3 + 56) = v21 + 112;
            }

            else
            {
              v23 = (v21 - 112);
              v24 = *(a3 + 56);
              if (v21 >= 0x70)
              {
                v25 = *(a3 + 56);
                v24 = v25;
                do
                {
                  v26 = webrtc::RtpCodec::RtpCodec(v24, v23);
                  *v26 = &unk_28829C0B8;
                  *(v26 + 26) = *(v23 + 26);
                  v23 = (v23 + 112);
                  v24 = (v26 + 112);
                  v25 = (v25 + 112);
                }

                while (v23 < v21);
              }

              *(a3 + 56) = v24;
              if (v21 != v19 + 112)
              {
                v27 = 0;
                do
                {
                  while (1)
                  {
                    v34 = v21 + v27;
                    v35 = v21 + v27;
                    v36 = v21 + v27 - 112;
                    if (v36 != v21 + v27)
                    {
                      break;
                    }

                    v42 = *(v35 - 192);
                    *(v35 - 64) = *(v35 - 176);
                    *(v35 - 80) = v42;
                    *(v34 - 8) = *(v21 + v27 - 120);
                    v27 -= 112;
                    if (v36 - 112 == v19)
                    {
                      goto LABEL_57;
                    }
                  }

                  v37 = (v34 - 104);
                  v38 = (v35 - 216);
                  v39 = *(v35 - 81);
                  v40 = *(v35 - 193);
                  if (v39 < 0)
                  {
                    if ((v40 & 0x80u) == 0)
                    {
                      v30 = v38;
                    }

                    else
                    {
                      v30 = *v38;
                    }

                    if ((v40 & 0x80u) == 0)
                    {
                      v31 = v40;
                    }

                    else
                    {
                      v31 = *(v21 + v27 - 208);
                    }

                    std::string::__assign_no_alias<false>(v37, v30, v31);
                  }

                  else if ((v40 & 0x80) != 0)
                  {
                    std::string::__assign_no_alias<true>(v37, *v38, *(v21 + v27 - 208));
                  }

                  else
                  {
                    v41 = *v38;
                    *(v34 - 88) = *(v38 + 2);
                    *&v37->__r_.__value_.__l.__data_ = v41;
                  }

                  v32 = v21 + v27;
                  v33 = *(v21 + v27 - 192);
                  *(v32 - 64) = *(v21 + v27 - 176);
                  *(v32 - 80) = v33;
                  std::vector<webrtc::RtcpFeedback>::__assign_with_size[abi:sn200100]<webrtc::RtcpFeedback*,webrtc::RtcpFeedback*>(v21 + v27 - 56, *(v21 + v27 - 168), *(v21 + v27 - 160), 0xAAAAAAAAAAAAAAABLL * ((*(v21 + v27 - 160) - *(v21 + v27 - 168)) >> 2));
                  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v32 - 32, *(v32 - 144), (v32 - 136));
                  *(v34 - 8) = *(v21 + v27 - 120);
                  v27 -= 112;
                }

                while (v36 - 112 != v19);
              }

LABEL_57:
              if (v19 == &v75)
              {
                v69 = v78;
                *(v19 + 48) = v79;
                *(v19 + 32) = v69;
              }

              else
              {
                if (*(v19 + 31) < 0)
                {
                  if (v77 >= 0)
                  {
                    v70 = &v76;
                  }

                  else
                  {
                    v70 = v76;
                  }

                  if (v77 >= 0)
                  {
                    v71 = HIBYTE(v77);
                  }

                  else
                  {
                    v71 = *(&v76 + 1);
                  }

                  std::string::__assign_no_alias<false>((v19 + 8), v70, v71);
                }

                else if (v77 < 0)
                {
                  std::string::__assign_no_alias<true>((v19 + 8), v76, *(&v76 + 1));
                }

                else
                {
                  v46 = v76;
                  *(v19 + 24) = v77;
                  *(v19 + 8) = v46;
                }

                v72 = v78;
                *(v19 + 48) = v79;
                *(v19 + 32) = v72;
                std::vector<webrtc::RtcpFeedback>::__assign_with_size[abi:sn200100]<webrtc::RtcpFeedback*,webrtc::RtcpFeedback*>(v19 + 56, __p, v81, 0xAAAAAAAAAAAAAAABLL * ((v81 - __p) >> 2));
                std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(v19 + 80, v82, &v83);
              }

              *(v19 + 104) = v84;
            }

            goto LABEL_29;
          }

          v43 = 0x6DB6DB6DB6DB6DB7 * ((v21 - v20) >> 4) + 1;
          if (v43 > 0x249249249249249)
          {
            goto LABEL_98;
          }

          v44 = 0x6DB6DB6DB6DB6DB7 * ((v22 - v20) >> 4);
          if (2 * v44 > v43)
          {
            v43 = 2 * v44;
          }

          if (v44 >= 0x124924924924924)
          {
            v45 = 0x249249249249249;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            if (v45 <= 0x249249249249249)
            {
              operator new();
            }

            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v47 = v19 - v20;
          v48 = (16 * ((v19 - v20) >> 4));
          if (!(0x6DB6DB6DB6DB6DB7 * ((v19 - v20) >> 4)))
          {
            if (v47 < 1)
            {
              operator new();
            }

            v48 -= 28 * ((0x6DB6DB6DB6DB6DB7 * (v47 >> 4) + 1) >> 1);
          }

          if (!v48)
          {
LABEL_97:
            __break(1u);
LABEL_98:
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          webrtc::RtpCodec::RtpCodec(v48, &v75);
          *v48 = &unk_28829C0B8;
          v48[26] = v84;
          v49 = v48 + 28;
          v50 = *(a3 + 56);
          if (v50 == v19)
          {
            v58 = v19;
          }

          else
          {
            v51 = v48 + 28;
            v52 = v19;
            v53 = (v48 + 28);
            do
            {
              v54 = webrtc::RtpCodec::RtpCodec(v53, v52);
              *v54 = &unk_28829C0B8;
              *(v54 + 26) = *(v52 + 26);
              v52 = (v52 + 112);
              v53 = (v54 + 112);
              v51 += 28;
            }

            while (v52 != v50);
            v55 = v19;
            v56 = v19;
            do
            {
              if (!v56)
              {
                goto LABEL_97;
              }

              v57 = (v56 + 112);
              (**v56)(v56);
              v55 += 112;
              v56 = v57;
            }

            while (v57 != v50);
            v58 = *(a3 + 56);
          }

          v59 = *(a3 + 48);
          v60 = (v48 - (v19 - v59));
          *(a3 + 56) = v19;
          if (v19 != v59)
          {
            v73 = v58;
            v61 = &v48[-4 * ((v19 - v59) >> 4)];
            v62 = v59;
            v63 = v59;
            v64 = v60;
            do
            {
              v65 = webrtc::RtpCodec::RtpCodec(v64, v63);
              *v65 = &unk_28829C0B8;
              *(v65 + 26) = *(v63 + 26);
              v63 = (v63 + 112);
              v64 = (v65 + 112);
              v61 += 28;
            }

            while (v63 != v19);
            v66 = v62;
            v67 = v62;
            v18 = v74;
            do
            {
              if (!v66)
              {
                goto LABEL_97;
              }

              v68 = v66 + 14;
              (**v66)(v66);
              v67 += 14;
              v66 = v68;
            }

            while (v68 != v19);
            v59 = *(a3 + 48);
            *(a3 + 48) = v60;
            *(a3 + 56) = v49 + v73 - v19;
            *(a3 + 64) = 0;
            if (!v59)
            {
              goto LABEL_29;
            }

LABEL_84:
            operator delete(v59);
            goto LABEL_29;
          }

          v18 = v74;
          *(a3 + 48) = v60;
          *(a3 + 56) = v49 + v58 - v19;
          *(a3 + 64) = 0;
          if (v59)
          {
            goto LABEL_84;
          }
        }

        else
        {
          (*(*v17 + 16))(&v75, v17);
          v28 = *(a3 + 56);
          if (v28 >= *(a3 + 64))
          {
            std::vector<webrtc::RtpCodecParameters>::__emplace_back_slow_path<webrtc::RtpCodecParameters>((a3 + 48));
          }

          if (!v28)
          {
            goto LABEL_97;
          }

          v29 = webrtc::RtpCodec::RtpCodec(v28, &v75);
          *v29 = &unk_28829C0B8;
          *(v29 + 26) = v84;
          *(a3 + 56) = v29 + 112;
        }

LABEL_29:
        v75 = &unk_28829C078;
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v82, v83);
        if (__p)
        {
          v81 = __p;
          operator delete(__p);
        }

        if (SHIBYTE(v77) < 0)
        {
          operator delete(v76);
        }

        v17 += 54;
        if (v17 == v18)
        {
          return;
        }
      }
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)2>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v10, v11, v12, v13, v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  *(a3 + 124) = 0;
  *(a3 + 136) = 0;
  *(a3 + 144) = 0;
  *(a3 + 128) = 0;
  *(a3 + 152) = 256;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 105) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 164) = 0;
}

void webrtc::WebRtcVideoSendChannel::SetRtpSendParameters(webrtc::WebRtcVideoSendChannel *a1@<X0>, unsigned int a2@<W1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v114 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 19);
  if (v7)
  {
    v9 = a1 + 152;
    do
    {
      v10 = *(v7 + 8);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v7;
      }

      v7 = *&v7[8 * v12];
    }

    while (v7);
    if (v9 != a1 + 152 && *(v9 + 8) <= a2)
    {
      (*(*a1 + 96))(v88);
      v26 = v89;
      v27 = v90;
      v28 = a3[6];
      if (v90 - v89 != a3[7] - v28)
      {
LABEL_23:
        v84 = 10;
        v87[14] = 0;
        v86 = 0;
        memset(v87, 0, 13);
        v85 = 0;
        webrtc::InvokeSetParametersCallback(a4, &v84, a5);
        if ((v87[7] & 0x80000000) != 0)
        {
          operator delete(v85);
        }

        goto LABEL_106;
      }

      if (v89 != v90)
      {
        while (webrtc::RtpCodec::operator==(v26, v28) && *(v26 + 104) == *(v28 + 104))
        {
          v26 += 112;
          v28 += 112;
          if (v26 == v27)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_23;
      }

LABEL_19:
      v29 = a3[13];
      v30 = a3[12];
      if (v30 == v29)
      {
        goto LABEL_105;
      }

      v31 = *(v30 + 16);
      if (v31 > 3)
      {
        v32 = 0;
        v33 = a1;
        if (*(a1 + 488) != 1)
        {
LABEL_104:
          webrtc::MediaChannelUtil::TransportForMediaChannels::SetPreferredDscp(v33 + 16, v32, v20, v21, v22, v23, v24, v25);
LABEL_105:
          v72 = *(v9 + 5);
          (*(a4 + 16))(0, a4, v76);
          v77 = *(a4 + 16);
          *(a4 + 16) = absl::internal_any_invocable::EmptyManager;
          *(a4 + 24) = 0;
          webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::SetRtpParameters(a5, v72, a3, v76);
          (v77)(1, v76, v76);
LABEL_106:
          webrtc::RtpParameters::~RtpParameters(v88);
          return;
        }
      }

      else
      {
        v32 = dword_273BA6A20[v31];
        v33 = a1;
        if (*(a1 + 488) != 1)
        {
          goto LABEL_104;
        }
      }

      v74 = v33 + 240;
      v34 = (v30 + 160);
      while (1)
      {
        LOBYTE(v98[0]) = 0;
        v99 = 0;
        if (*(v34 + 104))
        {
          break;
        }

        v35 = v34 + 112;
        v34 = (v34 + 272);
        if (v35 == v29)
        {
          goto LABEL_104;
        }
      }

      v73 = v32;
      webrtc::RtpCodec::RtpCodec(v98, v34);
      v99 = 1;
      webrtc::RtpCodec::~RtpCodec(v98);
      v37 = a1;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      if ((*(a1 + 488) & 1) == 0)
      {
        goto LABEL_107;
      }

      v39 = *(a1 + 62);
      v38 = *(a1 + 63);
      if (v38 != v39)
      {
        if (0xEF7BDEF7BDEF7BDFLL * ((v38 - v39) >> 3) < 0x108421084210843)
        {
          operator new();
        }

LABEL_108:
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v82 = 0;
      v40 = a3[12];
      if (a3[13] == v40)
      {
        v111 = 0;
        v113[14] = 0;
        *v113 = 0;
        __s[0] = 0;
        __s[1] = 0;
        *&v113[5] = 0;
        goto LABEL_86;
      }

      v41 = a3[12];
      LOBYTE(v98[0]) = 0;
      v101 = 0;
      v43 = (a1 + 456);
      v42 = v74;
      if (*(v40 + 264) == 1)
      {
        v44 = *(a1 + 65);
        if (!(0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 66) - v44) >> 3)))
        {
          goto LABEL_45;
        }

        v42 = *(a1 + 65);
        IsSameRtpCodecIgnoringLevel = webrtc::IsSameRtpCodecIgnoringLevel(v44, (v41 + 160), v36);
        v46 = v101;
        if (!IsSameRtpCodecIgnoringLevel)
        {
          goto LABEL_40;
        }

        v43 = (v42 + 216);
        if (v101)
        {
          webrtc::Codec::operator=(v98, v42);
          v47 = *v43;
          *(v100 + 9) = *(v42 + 225);
          v100[0] = v47;
          v46 = v101;
LABEL_40:
          if ((v46 & 1) == 0)
          {
LABEL_45:
            v49 = &v95;
            std::to_string(&v95, 0);
            v50 = v95.__r_.__value_.__r.__words[2];
            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v95.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v95.__r_.__value_.__l.__size_;
            }

            if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v52 = 22;
            }

            else
            {
              v52 = (v95.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            }

            if (v52 - size >= 0x30)
            {
              if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v49 = v95.__r_.__value_.__r.__words[0];
              }

              v53 = "Attempted to use an unsupported codec for layer ";
              if (size)
              {
                if ((size & 0x8000000000000000) != 0)
                {
                  goto LABEL_107;
                }

                v54 = v49 + size <= "Attempted to use an unsupported codec for layer " || v49 > "Attempted to use an unsupported codec for layer ";
                v55 = 48;
                if (v54)
                {
                  v55 = 0;
                }

                v53 = &aAttemptedToUse[v55];
                v56 = &v95;
                if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v56 = v95.__r_.__value_.__r.__words[0];
                }

                memmove(&v56[2], v49, size);
              }

              *&v49->__r_.__value_.__l.__data_ = *v53;
              *&v49->__r_.__value_.__r.__words[2] = *(v53 + 1);
              *&v49[1].__r_.__value_.__r.__words[1] = *(v53 + 2);
              v57 = size + 48;
              if ((v50 & 0x8000000000000000) != 0)
              {
                v95.__r_.__value_.__l.__size_ = size + 48;
              }

              else
              {
                *(&v95.__r_.__value_.__s + 23) = v57 & 0x7F;
              }

              v49->__r_.__value_.__s.__data_[v57] = 0;
            }

            else
            {
              std::string::__grow_by_and_replace(&v95, v52, size - v52 + 48, size, 0, 0, 0x30uLL, "Attempted to use an unsupported codec for layer ");
            }

            __len = v95.__r_.__value_.__r.__words[2];
            __src = *&v95.__r_.__value_.__l.__data_;
            memset(&v95, 0, sizeof(v95));
            v58 = SHIBYTE(__len);
            if ((SHIBYTE(__len) & 0x8000000000000000) != 0)
            {
              v60 = *(&__src + 1);
              p_src = __src;
              v111 = 7;
              if (*(&__src + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
              {
                std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
              }
            }

            else
            {
              v111 = 7;
              p_src = &__src;
              v60 = SHIBYTE(__len);
            }

            if (v60 > 0x16)
            {
              operator new();
            }

            v113[7] = v60;
            v37 = a1;
            v61 = (__s + v60);
            if (__s > p_src || v61 <= p_src)
            {
              if (v60)
              {
                memmove(__s, p_src, v60);
                v37 = a1;
              }

              *v61 = 0;
              *&v113[8] = 0;
              v113[12] = 0;
              v113[14] = 0;
              if (v58 < 0)
              {
                operator delete(__src);
                v37 = a1;
                if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_82:
                  if (v101 != 1)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_83;
                }
              }

              else if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_82;
              }

              operator delete(v95.__r_.__value_.__l.__data_);
              v37 = a1;
              if (v101 != 1)
              {
LABEL_86:
                v62 = v111;
                if (v111)
                {
                  v78 = v111;
                  if ((v113[7] & 0x80000000) != 0)
                  {
                    std::string::__init_copy_ctor_external(&v79, __s[0], __s[1]);
                  }

                  else
                  {
                    *&v79.__r_.__value_.__l.__data_ = *__s;
                    v79.__r_.__value_.__r.__words[2] = *v113;
                  }

                  v80[0] = *&v113[8];
                  *(v80 + 3) = *&v113[11];
                  webrtc::InvokeSetParametersCallback(a4, &v78, a5);
                  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v79.__r_.__value_.__l.__data_);
                  }
                }

                else if ((std::operator==[abi:sn200100]<webrtc::VideoCodecSettings,std::allocator<webrtc::VideoCodecSettings>>(*(v37 + 65), *(v37 + 66), v81, v82) & 1) == 0)
                {
                  LOBYTE(v98[0]) = 0;
                  v101 = 0;
                  v102 = 0;
                  v103 = 0;
                  v104[0] = 0;
                  v104[24] = 0;
                  v104[32] = 0;
                  v104[56] = 0;
                  v104[64] = 0;
                  v104[88] = 0;
                  v105 = 0;
                  v106 = 0;
                  v107 = 0;
                  v108 = 0;
                  v109 = 0;
                  v110 = 0;
                  if (v81 != v82)
                  {
                    std::optional<webrtc::VideoCodecSettings>::operator=[abi:sn200100]<webrtc::VideoCodecSettings&,void>(v98, v81);
                  }

                  std::optional<std::vector<webrtc::VideoCodecSettings>>::operator=[abi:sn200100]<std::vector<webrtc::VideoCodecSettings>&,void>(v104, &v81);
                  webrtc::WebRtcVideoSendChannel::ApplyChangedParams(a1, v98, v63, v64, v65, v66, v67, v68);
                  webrtc::WebRtcVideoSendChannel::ChangedSenderParameters::~ChangedSenderParameters(v98);
                }

                if ((v113[7] & 0x80000000) != 0)
                {
                  operator delete(__s[0]);
                }

                v69 = v81;
                if (v81)
                {
                  v70 = v82;
                  v71 = v81;
                  if (v82 != v81)
                  {
                    do
                    {
                      webrtc::Codec::~Codec((v70 - 248));
                    }

                    while (v70 != v69);
                    v71 = v81;
                  }

                  v82 = v69;
                  operator delete(v71);
                }

                v33 = a1;
                v32 = v73;
                if (v62)
                {
                  goto LABEL_106;
                }

                goto LABEL_104;
              }

LABEL_83:
              webrtc::Codec::~Codec(v98);
              v37 = a1;
              goto LABEL_86;
            }

LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

LABEL_43:
          std::vector<webrtc::VideoCodecSettings>::__emplace_back_slow_path<webrtc::VideoCodecSettings const&>(&v81);
        }
      }

      webrtc::Codec::Codec(v98, v42);
      v48 = *v43;
      *(v100 + 9) = *(v43 + 9);
      v100[0] = v48;
      v101 = 1;
      goto LABEL_43;
    }
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  v91 = 10;
  v94[14] = 0;
  v93 = 0;
  memset(v94, 0, 13);
  __p = 0;
  webrtc::InvokeSetParametersCallback(a4, &v91, a5);
  if ((v94[7] & 0x80000000) != 0)
  {
    operator delete(__p);
  }
}

void webrtc::WebRtcVideoSendChannel::GetSendCodec(webrtc::WebRtcVideoSendChannel *this@<X0>, webrtc::Codec *a2@<X8>)
{
  if (*(this + 488))
  {
    webrtc::Codec::Codec(a2, (this + 240));
    *(a2 + 216) = 1;
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    *a2 = 0;
    *(a2 + 216) = 0;
  }
}

void non-virtual thunk towebrtc::WebRtcVideoSendChannel::GetSendCodec(webrtc::WebRtcVideoSendChannel *this@<X0>, webrtc::Codec *a2@<X8>)
{
  if (*(this + 424))
  {
    webrtc::Codec::Codec(a2, (this + 176));
    *(a2 + 216) = 1;
  }

  else
  {
    if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
    {
      webrtc::webrtc_logging_impl::Log("\r\t", v3, v4, v5, v6, v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
    }

    *a2 = 0;
    *(a2 + 216) = 0;
  }
}

uint64_t webrtc::WebRtcVideoSendChannel::SetSend(webrtc::WebRtcVideoSendChannel *this, int a2)
{
  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)0>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v4, v5, v6, v7, v8, v9, v10, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  if (!a2)
  {
    v16 = *(this + 18);
    if (v16 != (this + 152))
    {
      do
      {
        v18 = *(v16 + 5);
        *(v18 + 1200) = 0;
        v19 = *(v18 + 80);
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        v20 = *(v16 + 1);
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = *(v16 + 2);
            v15 = *v21 == v16;
            v16 = v21;
          }

          while (!v15);
        }

        v16 = v21;
      }

      while (v21 != (this + 152));
    }

    goto LABEL_15;
  }

  if (*(this + 488) == 1)
  {
    v11 = *(this + 18);
    if (v11 != (this + 152))
    {
      do
      {
        v12 = *(v11 + 5);
        *(v12 + 1200) = a2;
        (***(v12 + 80))(*(v12 + 80));
        v13 = *(v11 + 1);
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = *(v11 + 2);
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
      }

      while (v14 != (this + 152));
    }

LABEL_15:
    *(this + 100) = a2;
    return 1;
  }

  return 0;
}

uint64_t webrtc::WebRtcVideoSendChannel::SetVideoSend(uint64_t a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  if (webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)1>())
  {
    goto LABEL_168;
  }

  v98 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc";
  v99 = 12057;
  v100 = &v97;
  if (!a3)
  {
    *(&__p.__r_.__value_.__s + 23) = 7;
    if (&__p > "nullptr" || __p.__r_.__value_.__r.__words + 7 <= "nullptr")
    {
      strcpy(&__p, "nullptr");
      v17 = "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc";
      goto LABEL_167;
    }

    goto LABEL_248;
  }

  *&v104.__r_.__value_.__r.__words[1] = 0uLL;
  if (&v104 <= "VideoOptions {" && &v104.__r_.__value_.__r.__words[1] + 6 > "VideoOptions {")
  {
    goto LABEL_248;
  }

  qmemcpy(&v104, "VideoOptions {", 14);
  *(&v104.__r_.__value_.__s + 23) = 14;
  webrtc::ToStringIfSet<BOOL>(&__p, "noise reduction", a3);
  p_p = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
  v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
  if (!p_p && v13)
  {
    goto LABEL_248;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = 22;
  }

  else
  {
    v15 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v104.__r_.__value_.__l.__size_;
  }

  if (v15 - size >= v13)
  {
    if (v13)
    {
      if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v104;
      }

      else
      {
        v18 = v104.__r_.__value_.__r.__words[0];
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_248;
      }

      v19 = v18 + size;
      if ((v18 + size) <= p_p && &v19[v13] > p_p)
      {
        goto LABEL_248;
      }

      v20 = v13;
      memmove(v19, p_p, v13);
      v21 = size + v20;
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        v104.__r_.__value_.__l.__size_ = size + v20;
        v18->__r_.__value_.__s.__data_[v21] = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

LABEL_21:
        operator delete(__p.__r_.__value_.__l.__data_);
        memset(&v101, 0, sizeof(v101));
        if (a3[8] != 1)
        {
          goto LABEL_97;
        }

        goto LABEL_37;
      }

      *(&v104.__r_.__value_.__s + 23) = v21 & 0x7F;
      v18->__r_.__value_.__s.__data_[v21] = 0;
    }

    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_21;
  }

  std::string::__grow_by_and_replace(&v104, v15, size + v13 - v15, size, size, 0, v13, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }

LABEL_36:
  memset(&v101, 0, sizeof(v101));
  if (a3[8] != 1)
  {
    goto LABEL_97;
  }

LABEL_37:
  std::string::__assign_external(&v101, "screencast min bitrate kbps", 0x1BuLL);
  v23 = SHIBYTE(v101.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) - 21) < 2)
    {
      v24 = 22;
      goto LABEL_41;
    }

    v28 = &v101;
    v29 = &v101 + SHIBYTE(v101.__r_.__value_.__r.__words[2]);
    if (v29 > ": ")
    {
      goto LABEL_52;
    }

LABEL_51:
    if (v29 + 2 > ": ")
    {
      goto LABEL_248;
    }

    goto LABEL_52;
  }

  v23 = v101.__r_.__value_.__l.__size_;
  v24 = (v101.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v24 - v101.__r_.__value_.__l.__size_ < 2)
  {
LABEL_41:
    std::string::__grow_by_and_replace(&v101, v24, v23 - v24 + 2, v23, v23, 0, 2uLL, ": ");
    if (a3[8] == 1)
    {
      goto LABEL_42;
    }

LABEL_54:
    LODWORD(v27) = 0;
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_55;
  }

  v28 = v101.__r_.__value_.__r.__words[0];
  v29 = (v101.__r_.__value_.__r.__words[0] + v101.__r_.__value_.__l.__size_);
  if (v101.__r_.__value_.__r.__words[0] + v101.__r_.__value_.__l.__size_ <= ": ")
  {
    goto LABEL_51;
  }

LABEL_52:
  *v29 = 8250;
  v30 = v23 + 2;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    v101.__r_.__value_.__l.__size_ = v23 + 2;
    v28->__r_.__value_.__s.__data_[v30] = 0;
    if (a3[8] != 1)
    {
      goto LABEL_54;
    }
  }

  else
  {
    *(&v101.__r_.__value_.__s + 23) = v30 & 0x7F;
    v28->__r_.__value_.__s.__data_[v30] = 0;
    if (a3[8] != 1)
    {
      goto LABEL_54;
    }
  }

LABEL_42:
  v25 = *(a3 + 1);
  __p.__r_.__value_.__r.__words[2] = 0x1600000000000000;
  *&__p.__r_.__value_.__l.__data_ = 0uLL;
  v26 = absl::numbers_internal::FastIntToBuffer(v25, &__p, v22);
  v27 = v26 - &__p;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (__p.__r_.__value_.__l.__size_ < v27)
    {
      goto LABEL_250;
    }

    __p.__r_.__value_.__l.__size_ = v26 - &__p;
    *(__p.__r_.__value_.__r.__words[0] + v27) = 0;
    LOBYTE(v27) = *(&__p.__r_.__value_.__s + 23);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (v27 > SHIBYTE(__p.__r_.__value_.__r.__words[2]))
    {
      goto LABEL_250;
    }

    *(&__p.__r_.__value_.__s + 23) = v26 - &__p;
    *v26 = 0;
    LOBYTE(v27) = *(&__p.__r_.__value_.__s + 23);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_45:
      LODWORD(v27) = v27;
LABEL_55:
      v13 = v27;
      v31 = v27 == 0;
      p_p = &__p;
      goto LABEL_56;
    }
  }

  v13 = __p.__r_.__value_.__l.__size_;
  p_p = __p.__r_.__value_.__r.__words[0];
  v31 = __p.__r_.__value_.__l.__size_ == 0;
  if (!__p.__r_.__value_.__r.__words[0] && __p.__r_.__value_.__l.__size_)
  {
    goto LABEL_248;
  }

LABEL_56:
  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = 22;
  }

  else
  {
    v32 = (v101.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v33 = v101.__r_.__value_.__l.__size_;
  }

  if (v32 - v33 >= v13)
  {
    if (!v31)
    {
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v101;
      }

      else
      {
        v34 = v101.__r_.__value_.__r.__words[0];
      }

      if ((v13 & 0x8000000000000000) != 0)
      {
        goto LABEL_248;
      }

      v35 = v34 + v33;
      if ((v34 + v33) <= p_p && &v35[v13] > p_p)
      {
        goto LABEL_248;
      }

      v36 = v13;
      memmove(v35, p_p, v13);
      v37 = v33 + v36;
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        v101.__r_.__value_.__l.__size_ = v33 + v36;
      }

      else
      {
        *(&v101.__r_.__value_.__s + 23) = v37 & 0x7F;
      }

      v34->__r_.__value_.__s.__data_[v37] = 0;
    }
  }

  else
  {
    std::string::__grow_by_and_replace(&v101, v32, v33 + v13 - v32, v33, v33, 0, v13, p_p);
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v38 = SHIBYTE(v101.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      goto LABEL_84;
    }

LABEL_87:
    v38 = v101.__r_.__value_.__l.__size_;
    v39 = (v101.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v39 - v101.__r_.__value_.__l.__size_ < 2)
    {
      goto LABEL_88;
    }

    v40 = v101.__r_.__value_.__r.__words[0];
    v41 = (v101.__r_.__value_.__r.__words[0] + v101.__r_.__value_.__l.__size_);
    if (v101.__r_.__value_.__r.__words[0] + v101.__r_.__value_.__l.__size_ > ", ")
    {
      goto LABEL_93;
    }

LABEL_92:
    if (v41 + 1 > ", ")
    {
      goto LABEL_248;
    }

    goto LABEL_93;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v38 = SHIBYTE(v101.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    goto LABEL_87;
  }

LABEL_84:
  if (v38 - 21 < 2)
  {
    v39 = 22;
LABEL_88:
    std::string::__grow_by_and_replace(&v101, v39, v38 - v39 + 2, v38, v38, 0, 2uLL, ", ");
    goto LABEL_97;
  }

  v40 = &v101;
  v41 = (&v101 + v38);
  if (&v101 + v38 <= ", ")
  {
    goto LABEL_92;
  }

LABEL_93:
  *v41 = 8236;
  v42 = v38 + 2;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    v101.__r_.__value_.__l.__size_ = v38 + 2;
  }

  else
  {
    *(&v101.__r_.__value_.__s + 23) = v42 & 0x7F;
  }

  v40->__r_.__value_.__s.__data_[v42] = 0;
LABEL_97:
  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &v101;
  }

  else
  {
    p_p = v101.__r_.__value_.__r.__words[0];
  }

  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v101.__r_.__value_.__l.__size_;
  }

  if (!p_p && v13)
  {
    goto LABEL_248;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = 22;
  }

  else
  {
    v43 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v104.__r_.__value_.__l.__size_;
  }

  if (v43 - v44 < v13)
  {
    std::string::__grow_by_and_replace(&v104, v43, v44 + v13 - v43, v44, v44, 0, v13, p_p);
    if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_113;
  }

  if (!v13)
  {
LABEL_123:
    if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

LABEL_113:
    operator delete(v101.__r_.__value_.__l.__data_);
    goto LABEL_124;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = &v104;
  }

  else
  {
    v45 = v104.__r_.__value_.__r.__words[0];
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_248;
  }

  v46 = v45 + v44;
  if ((v45 + v44) <= p_p && &v46[v13] > p_p)
  {
    goto LABEL_248;
  }

  v47 = v13;
  memmove(v46, p_p, v13);
  v48 = v44 + v47;
  if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v104.__r_.__value_.__s + 23) = v48 & 0x7F;
    v45->__r_.__value_.__s.__data_[v48] = 0;
    goto LABEL_123;
  }

  v104.__r_.__value_.__l.__size_ = v44 + v47;
  v45->__r_.__value_.__s.__data_[v48] = 0;
  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_113;
  }

LABEL_124:
  webrtc::ToStringIfSet<BOOL>(&__p, "is_screencast ", a3 + 12);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  if (!p_p && v13)
  {
    goto LABEL_248;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = 22;
  }

  else
  {
    v49 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v104.__r_.__value_.__l.__size_;
  }

  if (v49 - v50 < v13)
  {
    std::string::__grow_by_and_replace(&v104, v49, v50 + v13 - v49, v50, v50, 0, v13, p_p);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

    goto LABEL_140;
  }

  if (!v13)
  {
LABEL_150:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_140:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_151;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = &v104;
  }

  else
  {
    v51 = v104.__r_.__value_.__r.__words[0];
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_248;
  }

  v52 = v51 + v50;
  if ((v51 + v50) <= p_p && &v52[v13] > p_p)
  {
    goto LABEL_248;
  }

  v53 = v13;
  memmove(v52, p_p, v13);
  v54 = v50 + v53;
  if ((SHIBYTE(v104.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    *(&v104.__r_.__value_.__s + 23) = v54 & 0x7F;
    v51->__r_.__value_.__s.__data_[v54] = 0;
    goto LABEL_150;
  }

  v104.__r_.__value_.__l.__size_ = v50 + v53;
  v51->__r_.__value_.__s.__data_[v54] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_140;
  }

LABEL_151:
  v55 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = 22;
  }

  else
  {
    v8 = (v104.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v55 = v104.__r_.__value_.__l.__size_;
  }

  if (v8 != v55)
  {
    v56 = &v104;
    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v56 = v104.__r_.__value_.__r.__words[0];
    }

    v57 = v56 + v55;
    if (v56 + v55 > "}" || v57 + 1 <= "}")
    {
      *v57 = 125;
      v58 = v55 + 1;
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        v104.__r_.__value_.__l.__size_ = v58;
      }

      else
      {
        *(&v104.__r_.__value_.__s + 23) = v58 & 0x7F;
      }

      v56->__r_.__value_.__s.__data_[v58] = 0;
      goto LABEL_166;
    }

LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  std::string::__grow_by_and_replace(&v104, v8, 1uLL, v8, v8, 0, 1uLL, "}");
LABEL_166:
  __p = v104;
  v17 = v98;
LABEL_167:
  webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)10,std::string const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*> const&)::t, v8, v9, v10, v11, v12, v13, p_p, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v77 = *(a1 + 152);
    v60 = a1 + 152;
    v59 = v77;
    if (!v77)
    {
      goto LABEL_185;
    }

    goto LABEL_169;
  }

LABEL_168:
  v61 = *(a1 + 152);
  v60 = a1 + 152;
  v59 = v61;
  if (!v61)
  {
    goto LABEL_185;
  }

LABEL_169:
  v62 = v60;
  do
  {
    v63 = *(v59 + 32);
    v64 = v63 >= a2;
    v65 = v63 < a2;
    if (v64)
    {
      v62 = v59;
    }

    v59 = *(v59 + 8 * v65);
  }

  while (v59);
  if (v62 != v60 && *(v62 + 32) <= a2)
  {
    v66 = *(v62 + 40);
    if (!a3)
    {
      goto LABEL_210;
    }

    v67 = *(v66 + 512);
    v68 = *(v66 + 513);
    v69 = v68;
    if (a3[1] == 1)
    {
      v70 = *a3;
      *(v66 + 512) = v70;
      v69 = (v70 >> 8) & 1;
      v71 = *(v66 + 520);
      v72 = v66 + 516;
      v73 = *(v66 + 516);
      if (a3[8] != 1)
      {
        goto LABEL_179;
      }
    }

    else
    {
      v71 = *(v66 + 520);
      v72 = v66 + 516;
      v73 = *(v66 + 516);
      if (a3[8] != 1)
      {
LABEL_179:
        LOBYTE(v74) = *(v66 + 524);
        v75 = *(v66 + 525);
        if (a3[13])
        {
          goto LABEL_180;
        }

        goto LABEL_191;
      }
    }

    v74 = *(a3 + 1);
    *(v72 + 4) = a3[8];
    *v72 = v74;
    LOBYTE(v74) = *(v66 + 524);
    v75 = *(v66 + 525);
    if (a3[13])
    {
LABEL_180:
      v76 = *(a3 + 6);
      *(v66 + 524) = v76;
      if ((v76 & 0x100) == 0)
      {
        if (v75 & 1) != 0 && (v74)
        {
          v75 = 1;
          goto LABEL_194;
        }

        goto LABEL_201;
      }

LABEL_193:
      if ((v75 & v74 & 1) != (v76 & 1))
      {
LABEL_194:
        if (*(v66 + 792) == 1)
        {
          webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::SetCodec(v66, v66 + 544, (v66 + 800));
          v74 = *(a3 + 6);
          v75 = (v74 >> 8) & 1;
          v69 = *(v66 + 513);
        }
      }

LABEL_201:
      if (v69 & 1) != 0 && (v68)
      {
        if (*(v66 + 512) != v67)
        {
          goto LABEL_209;
        }
      }

      else if ((v69 ^ v68))
      {
LABEL_209:
        LOBYTE(a3) = 1;
        goto LABEL_210;
      }

      if ((v71 & 1) != 0 && *(v66 + 520))
      {
        if (*v72 != v73)
        {
          goto LABEL_209;
        }
      }

      else if ((v71 ^ *(v66 + 520)))
      {
        goto LABEL_209;
      }

      v89 = *(v66 + 525);
      if ((v75 & v89) == 1)
      {
        LOBYTE(a3) = *(v66 + 524) != v74;
      }

      else
      {
        LOBYTE(a3) = v75 ^ v89;
      }

LABEL_210:
      if (*(v66 + 72) && (v86 = *(v66 + 80)) != 0 && (LODWORD(__p.__r_.__value_.__l.__data_) = 0, (*(*v86 + 40))(v86, 0, &__p), a4))
      {
        if (!(a3 & 1 | (*(v66 + 72) != a4)))
        {
          *(v66 + 72) = a4;
LABEL_218:
          v87 = *(v66 + 80);
          if (v87)
          {
            if (*(v66 + 64) == 1)
            {
              if (*(v66 + 1196) == 1)
              {
                v88 = *(v66 + 1192);
              }

              else
              {
                v90 = *(v66 + 528);
                if (v90 != 1)
                {
                  v91 = v90 & 0xFFFFFFFE;
                  if (*(v66 + 525) == 1)
                  {
                    v88 = 2;
                    if (v91 == 2 || (*(v66 + 524) & 1) != 0)
                    {
                      goto LABEL_223;
                    }
                  }

                  else if (v91 == 2)
                  {
                    v88 = 2;
                    goto LABEL_223;
                  }

                  v92 = *(v66 + 80);
                  v93 = (*(**(v66 + 56) + 224))(*(v66 + 56));
                  (*(*v93 + 16))(&v104);
                  v94 = HIBYTE(v104.__r_.__value_.__r.__words[2]);
                  if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v94 = v104.__r_.__value_.__l.__size_;
                  }

                  if (v94 >= 7)
                  {
                    v95 = v104.__r_.__value_.__r.__words[0];
                    if ((v104.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v95 = &v104;
                    }

                    if (LODWORD(v95->__r_.__value_.__l.__data_) ^ 0x62616E45 | *(v95->__r_.__value_.__r.__words + 3) ^ 0x64656C62)
                    {
                      v88 = 1;
                    }

                    else
                    {
                      v88 = 3;
                    }
                  }

                  else
                  {
                    v88 = 1;
                  }

                  v87 = v92;
                  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v104.__r_.__value_.__l.__data_);
                    v87 = v92;
                  }

                  goto LABEL_223;
                }

                v88 = 1;
              }
            }

            else
            {
              v88 = 0;
            }

LABEL_223:
            LODWORD(v104.__r_.__value_.__l.__data_) = v88;
            (*(*v87 + 40))(v87, a4, &v104);
          }

          return 1;
        }
      }

      else if ((a3 & 1) == 0)
      {
        goto LABEL_217;
      }

      __p.__r_.__value_.__r.__words[2] = absl::internal_any_invocable::EmptyManager;
      v103 = 0;
      webrtc::WebRtcVideoSendChannel::WebRtcVideoSendStream::ReconfigureEncoder(v66, &__p, v9, v10, v11, v12, v13, p_p);
      (__p.__r_.__value_.__r.__words[2])(1, &__p, &__p);
LABEL_217:
      *(v66 + 72) = a4;
      if (!a4)
      {
        return 1;
      }

      goto LABEL_218;
    }

LABEL_191:
    if ((v75 & 1) == 0)
    {
      v75 = 0;
      goto LABEL_201;
    }

    v75 = 1;
    LOBYTE(v76) = v74;
    goto LABEL_193;
  }

LABEL_185:
  if (a4)
  {
LABEL_249:
    webrtc::webrtc_checks_impl::FatalLog("/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc", 1514, "source == nullptr", _ZZN6webrtc18webrtc_checks_impl11LogStreamerIJEE4CallIJEEEvPKciS5_DpRKT_E1t, v11, v12, v13, p_p, v96);
LABEL_250:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if ((webrtc::LogMessage::IsNoop<(webrtc::LoggingSeverity)3>() & 1) == 0)
  {
    webrtc::webrtc_logging_impl::Log(webrtc::webrtc_logging_impl::LogStreamer<>::Call<webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int>>(webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)13,webrtc::webrtc_logging_impl::LogMetadata>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)9,char const*>,webrtc::webrtc_logging_impl::Val<(webrtc::webrtc_logging_impl::LogArgType)4,unsigned int> const&)::t, v78, v79, v80, v81, v82, v83, v84, "/Library/Caches/com.apple.xbs/Sources/libwebrtc/Source/ThirdParty/libwebrtc/Source/webrtc/media/engine/webrtc_video_engine.cc");
  }

  return 0;
}