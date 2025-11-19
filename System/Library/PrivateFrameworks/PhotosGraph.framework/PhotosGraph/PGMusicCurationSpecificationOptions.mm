@interface PGMusicCurationSpecificationOptions
- (BOOL)isQUEmpty;
- (PGMusicCurationSpecificationOptions)init;
- (PGMusicCurationSpecificationOptions)initWithOptionsDictionary:(id)a3;
@end

@implementation PGMusicCurationSpecificationOptions

- (BOOL)isQUEmpty
{
  v3 = [(NSArray *)self->_titles count];
  v4 = [(NSArray *)self->_artists count];
  v5 = [(NSArray *)self->_genres count];
  if ([(NSArray *)self->_moodsText count])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(NSArray *)self->_phMoods count]== 0;
  }

  return !(v3 | v4) && v5 == 0 && v6;
}

- (PGMusicCurationSpecificationOptions)initWithOptionsDictionary:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PGMusicCurationSpecificationOptions;
  v5 = [(PGMusicCurationSpecificationOptions *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AED8]];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_titles, v9);

    v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AE98]];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    objc_storeStrong(&v5->_artists, v12);

    v13 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AEA0]];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v8;
    }

    objc_storeStrong(&v5->_genres, v15);

    v16 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AEB8]];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = v8;
    }

    objc_storeStrong(&v5->_moodsText, v18);

    v19 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AEC8]];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v8;
    }

    objc_storeStrong(&v5->_phMoods, v21);

    v22 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AEB0]];
    length = v5->_length;
    v5->_length = v22;

    v24 = *MEMORY[0x277D3AEA8];
    v25 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AEA8]];
    if (v25)
    {
      v26 = [v4 objectForKeyedSubscript:v24];
      v5->_isTrip = [v26 BOOLValue];
    }

    else
    {
      v5->_isTrip = 0;
    }

    v27 = *MEMORY[0x277D3AED0];
    v28 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AED0]];
    if (v28)
    {
      v29 = [v4 objectForKeyedSubscript:v27];
      v5->_shouldDownloadKeyFlexSong = [v29 BOOLValue];
    }

    else
    {
      v5->_shouldDownloadKeyFlexSong = 0;
    }

    v30 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AEE0]];
    v31 = MEMORY[0x277CBEC10];
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = MEMORY[0x277CBEC10];
    }

    v5->_weightByLanguage = v32;

    v33 = [v4 objectForKeyedSubscript:*MEMORY[0x277D3AEE8]];
    if (v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v31;
    }

    v5->_weightByRegion = v34;

    v35 = v5;
  }

  return v5;
}

- (PGMusicCurationSpecificationOptions)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v4 = [(PGMusicCurationSpecificationOptions *)self initWithOptionsDictionary:v3];

  return v4;
}

@end