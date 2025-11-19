@interface SSRSpeakerProfileEmbeddingExtractor
+ (void)_extractWithModelContext:(id)a3 completion:(id)a4;
+ (void)extractPSRVoiceProfileWithContext:(id)a3 completion:(id)a4;
+ (void)extractProfileData:(id)a3 completion:(id)a4;
+ (void)extractSATVoiceProfileWithContext:(id)a3 completion:(id)a4;
@end

@implementation SSRSpeakerProfileEmbeddingExtractor

+ (void)extractProfileData:(id)a3 completion:(id)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D01970];
  v8 = *MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8;
      v11 = [v5 path];
      *buf = 136315394;
      v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
      v54 = 2112;
      *v55 = v11;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s Extracting profile from : %@", buf, 0x16u);
    }

    v12 = MEMORY[0x277CBEAE0];
    v13 = [v5 path];
    v14 = [v12 inputStreamWithFileAtPath:v13];

    if (v14)
    {
      [v14 open];
      [v14 read:v56 maxLength:16];
      for (i = 0; i != 16; ++i)
      {
        v16 = v56[i];
        v17 = aSpkeratV001[i];
        if (v16 != v17)
        {
          v23 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
            v54 = 1024;
            *v55 = v16;
            *&v55[4] = 1024;
            *&v55[6] = v17;
            _os_log_error_impl(&dword_225E12000, v23, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : cookie match failed %d %d", buf, 0x18u);
          }

          [v14 close];
          v20 = MEMORY[0x277CCA9B8];
          v21 = &unk_283933040;
          goto LABEL_25;
        }
      }

      v51 = 0;
      [v14 read:&v51 maxLength:4];
      v50 = 0;
      [v14 read:&v50 maxLength:4];
      v49 = 0;
      [v14 read:&v49 maxLength:4];
      v48 = 0;
      [v14 read:&v48 maxLength:4];
      v47 = 0;
      [v14 read:&v47 maxLength:4];
      v46 = 0;
      [v14 read:&v46 maxLength:4];
      v45 = 0;
      [v14 read:&v45 maxLength:4];
      v44 = 0;
      [v14 read:&v44 maxLength:4];
      v43 = 0;
      [v14 read:&v43 maxLength:4];
      v42 = 0;
      [v14 read:&v42 maxLength:4];
      [v14 read:&v42 maxLength:4];
      [v14 read:&v42 maxLength:4];
      [v14 read:&v42 maxLength:4];
      [v14 read:&v42 maxLength:4];
      [v14 read:&v42 maxLength:4];
      [v14 read:&v42 maxLength:4];
      if (v50 != 1)
      {
        v24 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v24, OS_LOG_TYPE_ERROR, "%s cannot read incompatible version", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933068;
        goto LABEL_25;
      }

      v18 = v49;
      if (v49 >= 0x989681)
      {
        v19 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v19, OS_LOG_TYPE_ERROR, "%s header specifies implausible filesize", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933090;
        goto LABEL_25;
      }

      if (!v48)
      {
        v28 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v28, OS_LOG_TYPE_ERROR, "%s nil vector", buf, 0xCu);
        }

        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_2839330B8;
        goto LABEL_25;
      }

      if (!v47)
      {
        v31 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v31, OS_LOG_TYPE_ERROR, "%s Empty profile", buf, 0xCu);
        }

        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_2839330E0;
        goto LABEL_25;
      }

      if (v45 < v48)
      {
        v27 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v27, OS_LOG_TYPE_ERROR, "%s stride is less than width", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933108;
        goto LABEL_25;
      }

      if (v44 < v47)
      {
        v32 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v32, OS_LOG_TYPE_ERROR, "%s stride is less than width", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933130;
        goto LABEL_25;
      }

      if (v43)
      {
        v33 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v33, OS_LOG_TYPE_ERROR, "%s only float32 dataformat supported", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933158;
        goto LABEL_25;
      }

      if (v49 != 4 * v45 * v44)
      {
        v37 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v37, OS_LOG_TYPE_ERROR, "%s unexpected file size", buf, 0xCu);
        }

        [v14 close];
        v20 = MEMORY[0x277CCA9B8];
        v21 = &unk_283933180;
        goto LABEL_25;
      }

      v25 = [MEMORY[0x277CBEB28] dataWithLength:v49];
      v34 = [v14 read:objc_msgSend(v25 maxLength:{"mutableBytes"), v18}];
      [v14 close];
      v35 = [v25 mutableBytes];
      v36 = v45 * v44;
      if (v36)
      {
        while ((*v35 & 0x7FFFFFFFu) < 0x7F800000)
        {
          ++v35;
          if (!--v36)
          {
            goto LABEL_52;
          }
        }

        v39 = MEMORY[0x277CCA9B8];
        v40 = &unk_2839331A8;
      }

      else
      {
LABEL_52:
        if (v34 == v49)
        {
          (*(v6 + 2))(v6, v25, v47, v48, 0);
          goto LABEL_26;
        }

        v38 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
          _os_log_error_impl(&dword_225E12000, v38, OS_LOG_TYPE_ERROR, "%s cannot read enough data from file:", buf, 0xCu);
        }

        v39 = MEMORY[0x277CCA9B8];
        v40 = &unk_2839331D0;
      }

      v41 = [v39 errorWithDomain:@"com.apple.speakerrecognition" code:759 userInfo:v40];
      (*(v6 + 2))(v6, 0, 0, 0, v41);
    }

    else
    {
      v22 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v29 = v22;
        v30 = [v5 path];
        *buf = 136315394;
        v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
        v54 = 2112;
        *v55 = v30;
        _os_log_error_impl(&dword_225E12000, v29, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : inputStream = nil, %@", buf, 0x16u);
      }

      v20 = MEMORY[0x277CCA9B8];
      v21 = &unk_283933018;
LABEL_25:
      v25 = [v20 errorWithDomain:@"com.apple.speakerrecognition" code:759 userInfo:v21];
      (*(v6 + 2))(v6, 0, 0, 0, v25);
    }

LABEL_26:
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v53 = "+[SSRSpeakerProfileEmbeddingExtractor extractProfileData:completion:]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : profileURL = nil", buf, 0xCu);
    }

    (*(v6 + 2))(v6, 0, 0, 0, 0);
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)_extractWithModelContext:(id)a3 completion:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = v6;
  v25 = a4;
  if (v6)
  {
    v7 = [v6 voiceProfilesModelFilePathsExclave];
    v23 = v7;
    v8 = v7;
    if (v7 && [v7 count])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v47 = 0x3032000000;
      v48 = __Block_byref_object_copy__868;
      v49 = __Block_byref_object_dispose__869;
      v50 = 0;
      v41 = 0;
      v42 = &v41;
      v43 = 0x2020000000;
      v44 = 0;
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v40 = 0;
      v31 = 0;
      v32 = &v31;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__868;
      v35 = __Block_byref_object_dispose__869;
      v36 = 0;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v9 = [v8 allValues];
      v10 = [v9 countByEnumeratingWithState:&v27 objects:v45 count:16];
      if (v10)
      {
        v11 = *v28;
LABEL_6:
        v12 = 0;
        while (1)
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = MEMORY[0x277CBEBC0];
          v14 = [*(*(&v27 + 1) + 8 * v12) path];
          v15 = [v13 fileURLWithPath:v14];

          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __75__SSRSpeakerProfileEmbeddingExtractor__extractWithModelContext_completion___block_invoke;
          v26[3] = &unk_278577E50;
          v26[4] = &buf;
          v26[5] = &v41;
          v26[6] = &v37;
          v26[7] = &v31;
          [a1 extractProfileData:v15 completion:v26];
          LOBYTE(v14) = v32[5] == 0;

          if (v14)
          {
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [v9 countByEnumeratingWithState:&v27 objects:v45 count:16];
            if (v10)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      if (v25)
      {
        v16 = *(*(&buf + 1) + 40);
        v17 = *(v42 + 6);
        v18 = *(v38 + 6);
        v19 = v32[5];
        v25[2]();
      }

      _Block_object_dispose(&v31, 8);

      _Block_object_dispose(&v37, 8);
      _Block_object_dispose(&v41, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v20 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "+[SSRSpeakerProfileEmbeddingExtractor _extractWithModelContext:completion:]";
        _os_log_error_impl(&dword_225E12000, v20, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : modelContext = nil", &buf, 0xCu);
      }

      (v25[2])(v25, 0, 0, 0, 0);
    }
  }

  else
  {
    v21 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[SSRSpeakerProfileEmbeddingExtractor _extractWithModelContext:completion:]";
      _os_log_error_impl(&dword_225E12000, v21, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : model context is nil", &buf, 0xCu);
    }

    (v25[2])(v25, 0, 0, 0, 0);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __75__SSRSpeakerProfileEmbeddingExtractor__extractWithModelContext_completion___block_invoke(void *a1, void *a2, int a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  v11 = *(a1[4] + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v9;
  v15 = v9;

  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
  v13 = *(a1[7] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
}

+ (void)extractSATVoiceProfileWithContext:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 modelsContext];
      v9 = [SSRUtils stringForSpeakerRecognizerType:2];
      v10 = [v8 objectForKeyedSubscript:v9];

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __84__SSRSpeakerProfileEmbeddingExtractor_extractSATVoiceProfileWithContext_completion___block_invoke;
      v13[3] = &unk_278577E28;
      v14 = v7;
      [a1 _extractWithModelContext:v10 completion:v13];
    }

    else
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "+[SSRSpeakerProfileEmbeddingExtractor extractSATVoiceProfileWithContext:completion:]";
        _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : context is nil", buf, 0xCu);
      }

      (*(v7 + 2))(v7, 0, 0, 0, 2, 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)extractPSRVoiceProfileWithContext:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6)
    {
      v8 = [v6 modelsContext];
      v9 = [SSRUtils stringForSpeakerRecognizerType:1];
      v10 = [v8 objectForKeyedSubscript:v9];

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __84__SSRSpeakerProfileEmbeddingExtractor_extractPSRVoiceProfileWithContext_completion___block_invoke;
      v13[3] = &unk_278577E28;
      v14 = v7;
      [a1 _extractWithModelContext:v10 completion:v13];
    }

    else
    {
      v11 = *MEMORY[0x277D01970];
      if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "+[SSRSpeakerProfileEmbeddingExtractor extractPSRVoiceProfileWithContext:completion:]";
        _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s cannot extract profile embedding : context is nil", buf, 0xCu);
      }

      (*(v7 + 2))(v7, 0, 0, 0, 1, 0);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end