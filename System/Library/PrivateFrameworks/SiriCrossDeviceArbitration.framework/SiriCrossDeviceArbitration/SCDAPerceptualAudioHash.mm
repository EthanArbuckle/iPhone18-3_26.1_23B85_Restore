@interface SCDAPerceptualAudioHash
+ (id)_audioHashFileBaseDirectory;
+ (id)_audioHashFilePath;
+ (id)tryToRetrieveAudioHashFromFile;
- (BOOL)isEqual:(id)a3;
- (SCDAPerceptualAudioHash)initWithCoder:(id)a3;
- (SCDAPerceptualAudioHash)initWithData:(id)a3;
- (id)description;
@end

@implementation SCDAPerceptualAudioHash

+ (id)tryToRetrieveAudioHashFromFile
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 _audioHashFilePath];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v3 fileExistsAtPath:v2])
  {
    v4 = [v2 UTF8String];
  }

  else
  {
    v4 = 0;
  }

  v5 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v16 = "+[SCDAPerceptualAudioHash tryToRetrieveAudioHashFromFile]";
    v17 = 2081;
    v18 = v4;
    _os_log_impl(&dword_1DA758000, v5, OS_LOG_TYPE_INFO, "%s #scda BTLE opening audio file at path %{private}s", buf, 0x16u);
  }

  if (v4)
  {
    v6 = open(v4, 0);
    if (v6 >= 1)
    {
      v7 = v6;
      v8 = read(v6, v14, 0xDuLL);
      v9 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v16 = "+[SCDAPerceptualAudioHash tryToRetrieveAudioHashFromFile]";
        v17 = 2048;
        v18 = v8;
        _os_log_impl(&dword_1DA758000, v9, OS_LOG_TYPE_INFO, "%s #scda BTLE could open audio data file, MYR_EXT_FINGERPRINT_LEN: %zd", buf, 0x16u);
      }

      if (v8 <= 0xD && ((1 << v8) & 0x3010) != 0)
      {
        v10 = [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:v8];
        close(v7);
        goto LABEL_16;
      }

      v11 = SCDALogContextCore;
      if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v16 = "+[SCDAPerceptualAudioHash tryToRetrieveAudioHashFromFile]";
        _os_log_error_impl(&dword_1DA758000, v11, OS_LOG_TYPE_ERROR, "%s #scda BTLE could not read 4 bytes from audio data file", buf, 0xCu);
      }
    }
  }

  v10 = 0;
LABEL_16:

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)_audioHashFilePath
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 _audioHashFileBaseDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"siriBC"];
  v4 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v7 = 136315395;
    v8 = "+[SCDAPerceptualAudioHash _audioHashFilePath]";
    v9 = 2113;
    v10 = v3;
    _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s BTLE audio hash file path %{private}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)_audioHashFileBaseDirectory
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = NSHomeDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/VoiceTrigger"];
  v4 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_INFO))
  {
    v7 = 136315395;
    v8 = "+[SCDAPerceptualAudioHash _audioHashFileBaseDirectory]";
    v9 = 2113;
    v10 = v3;
    _os_log_impl(&dword_1DA758000, v4, OS_LOG_TYPE_INFO, "%s BTLE audio hash base directory %{private}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (SCDAPerceptualAudioHash)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SCDAPerceptualAudioHash::data"];

  v6 = [[SCDAPerceptualAudioHash alloc] initWithData:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SCDAPerceptualAudioHash *)v4 data];
      data = self->_data;
      v7 = data == v5 || [(NSData *)data isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SCDAPerceptualAudioHash *)self pHash];
  v5 = [(SCDAPerceptualAudioHash *)self scoreAudioIntensity];
  v6 = [(SCDAPerceptualAudioHash *)self userConfidence];
  v7 = [(SCDAPerceptualAudioHash *)self frac];
  v8 = [(SCDAPerceptualAudioHash *)self voiceTriggerTime];
  [SCDAElectionWindow electionWindowTimeRemaining:[(SCDAPerceptualAudioHash *)self voiceTriggerTime] fromNow:mach_absolute_time()];
  return [v3 stringWithFormat:@"hash:%hu, audio:%d, uc:%d, frac:%d, vtt:%llu, remaining:%f", v4, v5, v6, v7, v8, v9];
}

- (SCDAPerceptualAudioHash)initWithData:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SCDAPerceptualAudioHash;
  v5 = [(SCDAPerceptualAudioHash *)&v26 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v4;
  v7 = [v6 length];
  v8 = v7;
  if (v7 <= 0xCuLL)
  {
    v9 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v28 = "[SCDAPerceptualAudioHash initWithData:]";
      _os_log_debug_impl(&dword_1DA758000, v9, OS_LOG_TYPE_DEBUG, "%s Perceptual Audio hash with no VT time, trying to read from file.", buf, 0xCu);
    }

    v10 = +[SCDAPerceptualAudioHash tryToRetrieveAudioHashFromFile];
    v11 = [v10 length];
    if (v11 > [v6 length])
    {
      v12 = v10;

      v8 = [v12 length];
      v6 = v12;
    }
  }

  if (v8 - 12 < 2)
  {
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_21:
    [(SCDAPerceptualAudioHash *)v5 setData:v6];
    v19 = v5;
    goto LABEL_22;
  }

  if (v8 != 4)
  {
    v18 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "[SCDAPerceptualAudioHash initWithData:]";
      v29 = 2114;
      v30 = v6;
      _os_log_error_impl(&dword_1DA758000, v18, OS_LOG_TYPE_ERROR, "%s Invalid perceptual audio hash: %{public}@", buf, 0x16u);
    }

    goto LABEL_21;
  }

LABEL_11:
  v13 = SCDALogContextCore;
  if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "[SCDAPerceptualAudioHash initWithData:]";
    v29 = 1024;
    LODWORD(v30) = v8;
    _os_log_debug_impl(&dword_1DA758000, v13, OS_LOG_TYPE_DEBUG, "%s Data Length: %d", buf, 0x12u);
  }

  *(v25 + 5) = 0;
  v25[0] = 0;
  [v6 getBytes:v25 range:{0, v8}];
  [(SCDAPerceptualAudioHash *)v5 setPHash:LOWORD(v25[0])];
  [(SCDAPerceptualAudioHash *)v5 setScoreAudioIntensity:BYTE2(v25[0])];
  [(SCDAPerceptualAudioHash *)v5 setUserConfidence:BYTE3(v25[0])];
  [(SCDAPerceptualAudioHash *)v5 setVoiceTriggerTime:0];
  [(SCDAPerceptualAudioHash *)v5 setFrac:0];
  if (v8 >= 5)
  {
    v14 = *(v25 + 4);
    [SCDAElectionWindow electionWindowTimeRemaining:*(v25 + 4) fromNow:mach_absolute_time()];
    v16 = v15;
    v17 = SCDALogContextCore;
    if (os_log_type_enabled(SCDALogContextCore, OS_LOG_TYPE_DEBUG))
    {
      v23 = v17;
      v24 = [v6 debugDescription];
      *buf = 136315906;
      v28 = "[SCDAPerceptualAudioHash initWithData:]";
      v29 = 2112;
      v30 = v24;
      v31 = 2048;
      v32 = v14;
      v33 = 2048;
      v34 = v16;
      _os_log_debug_impl(&dword_1DA758000, v23, OS_LOG_TYPE_DEBUG, "%s data=%@, voiceTriggerTimeRaw=%llu, electionTimeRemaining=%f", buf, 0x2Au);
    }

    [(SCDAPerceptualAudioHash *)v5 setVoiceTriggerTime:v14];
    if (v8 >= 0xD)
    {
      [(SCDAPerceptualAudioHash *)v5 setFrac:BYTE4(v25[1])];
    }
  }

  [(SCDAPerceptualAudioHash *)v5 setData:v6];
LABEL_22:

  if (v8 <= 0xD && ((1 << v8) & 0x3010) != 0)
  {
LABEL_24:
    v20 = v5;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v5;
}

@end