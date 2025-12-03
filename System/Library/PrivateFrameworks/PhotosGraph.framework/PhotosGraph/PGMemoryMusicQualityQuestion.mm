@interface PGMemoryMusicQualityQuestion
- (PGMemoryMusicQualityQuestion)initWithMemory:(id)memory withSongInfo:(id)info localFactoryScore:(double)score;
@end

@implementation PGMemoryMusicQualityQuestion

- (PGMemoryMusicQualityQuestion)initWithMemory:(id)memory withSongInfo:(id)info localFactoryScore:(double)score
{
  v37 = *MEMORY[0x277D85DE8];
  memoryCopy = memory;
  infoCopy = info;
  v32.receiver = self;
  v32.super_class = PGMemoryMusicQualityQuestion;
  v10 = [(PGMemoryMusicQualityQuestion *)&v32 init];
  if (v10)
  {
    uuid = [memoryCopy uuid];
    entityIdentifier = v10->_entityIdentifier;
    v10->_entityIdentifier = uuid;

    v10->_state = 0;
    v10->_localFactoryScore = score;
    v13 = PLStoryGetLog();
    v14 = v13;
    if (infoCopy)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v36 = infoCopy;
        _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_DEBUG, "[MusicQualityQuestion] songInfo: %@", buf, 0xCu);
      }

      v33[0] = *MEMORY[0x277D3C950];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(memoryCopy, "category")}];
      v34[0] = v14;
      v33[1] = *MEMORY[0x277D3C958];
      uuid2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(memoryCopy, "subcategory")}];
      v34[1] = uuid2;
      v33[2] = *MEMORY[0x277D3C970];
      v16 = [infoCopy objectForKeyedSubscript:?];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = @"Unknown";
      }

      v34[2] = v18;
      v33[3] = *MEMORY[0x277D3C978];
      v19 = [infoCopy objectForKeyedSubscript:?];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = @"Unknown";
      }

      v34[3] = v21;
      v33[4] = *MEMORY[0x277D3C960];
      v22 = [infoCopy objectForKeyedSubscript:?];
      v23 = v22;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        v24 = @"Unknown";
      }

      v34[4] = v24;
      v33[5] = *MEMORY[0x277D3C968];
      v25 = [infoCopy objectForKeyedSubscript:?];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = @"Unknown";
      }

      v34[5] = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:6];
      additionalInfo = v10->_additionalInfo;
      v10->_additionalInfo = v28;
    }

    else
    {
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
LABEL_21:

        goto LABEL_22;
      }

      uuid2 = [memoryCopy uuid];
      *buf = 138412290;
      v36 = uuid2;
      _os_log_impl(&dword_22F0FC000, v14, OS_LOG_TYPE_ERROR, "[MusicQualityQuestion] Unable to extract songInfo for memory %@", buf, 0xCu);
    }

    goto LABEL_21;
  }

LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
  return v10;
}

@end