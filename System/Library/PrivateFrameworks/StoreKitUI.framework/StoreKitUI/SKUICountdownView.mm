@interface SKUICountdownView
- (SKUICountdownView)initWithCountdown:(id)countdown clientContext:(id)context;
- (id)_newDateDescriptionLabel;
- (id)_newDateLabel;
- (id)_newFlapLabelWithPosition:(int64_t)position;
- (id)_newNumberSeparatorLabel;
- (int64_t)_currentValue;
- (void)_currentRemainingDays:(int64_t *)days hours:(int64_t *)hours minutes:(int64_t *)minutes seconds:(int64_t *)seconds;
- (void)_reload;
- (void)_reloadDateDescriptions:(BOOL)descriptions;
- (void)_reloadFontSizes;
- (void)_reloadNumber;
- (void)_reloadNumberFlapped;
- (void)_reloadTime;
- (void)_reloadTimeFlapped;
- (void)_setCountdownWithResponse:(id)response error:(id)error;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundImage:(id)image;
- (void)setFrame:(CGRect)frame;
- (void)start;
- (void)stop;
@end

@implementation SKUICountdownView

- (SKUICountdownView)initWithCountdown:(id)countdown clientContext:(id)context
{
  countdownCopy = countdown;
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUICountdownView initWithCountdown:clientContext:];
  }

  v32.receiver = self;
  v32.super_class = SKUICountdownView;
  v9 = [(SKUICountdownView *)&v32 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientContext, context);
    objc_storeStrong(&v10->_countdown, countdown);
    v11 = objc_alloc_init(MEMORY[0x277CCABB8]);
    numberFormatter = v10->_numberFormatter;
    v10->_numberFormatter = v11;

    v13 = v10->_numberFormatter;
    numberFormat = [(SKUICountdown *)v10->_countdown numberFormat];
    if (numberFormat)
    {
      [(NSNumberFormatter *)v13 setPositiveFormat:numberFormat];
    }

    else
    {
      clientContext = v10->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"COUNTDOWN_NUMBER_FORMAT"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"COUNTDOWN_NUMBER_FORMAT" inBundles:0];
      }
      v16 = ;
      [(NSNumberFormatter *)v13 setPositiveFormat:v16];
    }

    if (![(SKUICountdown *)v10->_countdown isLoaded])
    {
      v17 = [(SKUICountdown *)v10->_countdown URL];

      if (v17)
      {
        objc_initWeak(&location, v10);
        v18 = objc_alloc(MEMORY[0x277D69CD8]);
        v19 = [(SKUICountdown *)v10->_countdown URL];
        v20 = [v18 initWithURL:v19];

        v21 = +[(SSVURLDataConsumer *)SKUIJSONDataConsumer];
        [v20 setDataConsumer:v21];

        v22 = [(SKUIClientContext *)v10->_clientContext valueForConfigurationKey:@"sfsuffix"];
        [v20 setStoreFrontSuffix:v22];

        v26 = MEMORY[0x277D85DD0];
        v27 = 3221225472;
        v28 = __53__SKUICountdownView_initWithCountdown_clientContext___block_invoke;
        v29 = &unk_2781FA0F0;
        objc_copyWeak(&v30, &location);
        [v20 setOutputBlock:&v26];
        v23 = objc_alloc_init(MEMORY[0x277CCABD8]);
        operationQueue = v10->_operationQueue;
        v10->_operationQueue = v23;

        [(NSOperationQueue *)v10->_operationQueue addOperation:v20, v26, v27, v28, v29];
        objc_destroyWeak(&v30);

        objc_destroyWeak(&location);
      }
    }

    [(SKUICountdownView *)v10 _reload];
    [(SKUICountdownView *)v10 start];
  }

  return v10;
}

void __53__SKUICountdownView_initWithCountdown_clientContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__SKUICountdownView_initWithCountdown_clientContext___block_invoke_2;
  block[3] = &unk_2781FA0C8;
  objc_copyWeak(&v12, (a1 + 32));
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

void __53__SKUICountdownView_initWithCountdown_clientContext___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _setCountdownWithResponse:*(a1 + 32) error:*(a1 + 40)];
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  [(NSOperationQueue *)self->_operationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = SKUICountdownView;
  [(SKUICountdownView *)&v3 dealloc];
}

- (void)setBackgroundImage:(id)image
{
  imageCopy = image;
  image = [(UIImageView *)self->_imageView image];

  if (image != imageCopy)
  {
    imageView = self->_imageView;
    if (imageCopy)
    {
      if (!imageView)
      {
        v7 = objc_alloc_init(MEMORY[0x277D755E8]);
        v8 = self->_imageView;
        self->_imageView = v7;

        [(UIImageView *)self->_imageView setContentMode:1];
        v9 = self->_imageView;
        backgroundColor = [(SKUICountdownView *)self backgroundColor];
        [(UIImageView *)v9 setBackgroundColor:backgroundColor];

        [(SKUICountdownView *)self addSubview:self->_imageView];
        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:?];
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v11 = self->_imageView;
      self->_imageView = 0;
    }

    setNeedsLayout = [(SKUICountdownView *)self setNeedsLayout];
  }

  MEMORY[0x2821F9730](setNeedsLayout);
}

- (void)start
{
  if ([(SKUICountdown *)self->_countdown isLoaded])
  {
    [(NSTimer *)self->_timer invalidate];
    v3 = 1.0;
    if (![(SKUICountdown *)self->_countdown type])
    {
      rate = [(SKUICountdown *)self->_countdown rate];
      if (1.0 / rate >= 0.400000006)
      {
        v3 = 1.0 / rate;
      }

      else
      {
        v3 = 0.400000006;
      }
    }

    timerTarget = self->_timerTarget;
    if (!timerTarget)
    {
      objc_initWeak(&location, self);
      v6 = objc_alloc_init(SKUICountdownViewTimerTarget);
      v7 = self->_timerTarget;
      self->_timerTarget = v6;

      v8 = self->_timerTarget;
      v12 = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __26__SKUICountdownView_start__block_invoke;
      v15 = &unk_2781F8320;
      objc_copyWeak(&v16, &location);
      [(SKUICountdownViewTimerTarget *)v8 setActionBlock:&v12];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
      timerTarget = self->_timerTarget;
    }

    v9 = [MEMORY[0x277CBEBB8] timerWithTimeInterval:timerTarget target:sel_action selector:0 userInfo:1 repeats:{v3, v12, v13, v14, v15}];
    timer = self->_timer;
    self->_timer = v9;

    mainRunLoop = [MEMORY[0x277CBEB88] mainRunLoop];
    [mainRunLoop addTimer:self->_timer forMode:*MEMORY[0x277CBE738]];
  }
}

void __26__SKUICountdownView_start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reload];
}

- (void)stop
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = SKUICountdownView;
  [(SKUICountdownView *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(SKUICountdownView *)self frame];
  self->_factor = v4 / 212.0;
  [(SKUICountdownView *)self _reloadFontSizes];
}

- (void)layoutSubviews
{
  v190 = *MEMORY[0x277D85DE8];
  v181.receiver = self;
  v181.super_class = SKUICountdownView;
  [(SKUICountdownView *)&v181 layoutSubviews];
  [(SKUICountdownView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (self->_imageView)
  {
    [(SKUICountdownView *)self sendSubviewToBack:?];
    [(UIImageView *)self->_imageView setFrame:v4, v6, v8, v10];
  }

  if ([(SKUICountdown *)self->_countdown isLoaded])
  {
    artworkProvider = [(SKUICountdown *)self->_countdown artworkProvider];

    if (artworkProvider)
    {
      artworkProvider2 = [(SKUICountdown *)self->_countdown artworkProvider];
      largestArtwork = [artworkProvider2 largestArtwork];

      v14 = v8 / [largestArtwork width];
      height = [largestArtwork height];
      v16 = v14 * height;
      if (v16 > 0.0)
      {
        v17 = (v10 - v16) * 0.5;
        v6 = v6 + roundf(v17);
        v10 = v14 * height;
      }
    }

    type = [(SKUICountdown *)self->_countdown type];
    countdown = self->_countdown;
    if (type)
    {
      if ([(SKUICountdown *)countdown type]!= 1)
      {
        return;
      }

      isFlapped = [(SKUICountdown *)self->_countdown isFlapped];
      dateDescriptionLabelDay = self->_dateDescriptionLabelDay;
      if (isFlapped)
      {
        dateDescriptionLabelHour = self->_dateDescriptionLabelHour;
        v187[0] = self->_dateDescriptionLabelDay;
        v187[1] = dateDescriptionLabelHour;
        dateDescriptionLabelSecond = self->_dateDescriptionLabelSecond;
        v187[2] = self->_dateDescriptionLabelMinute;
        v187[3] = dateDescriptionLabelSecond;
        v157 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:4];
        array = [MEMORY[0x277CBEB18] array];
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v156 = 504;
        obj = self->_dateFlapLabels;
        v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v169 objects:v186 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v170;
          v27 = 0.0;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v170 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v169 + 1) + 8 * i);
              v165 = 0u;
              v166 = 0u;
              v167 = 0u;
              v168 = 0u;
              v30 = v29;
              v31 = [v30 countByEnumeratingWithState:&v165 objects:v185 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v166;
                v34 = 0.0;
                do
                {
                  for (j = 0; j != v32; ++j)
                  {
                    if (*v166 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    [*(*(&v165 + 1) + 8 * j) frame];
                    v34 = v34 + v36;
                  }

                  v32 = [v30 countByEnumeratingWithState:&v165 objects:v185 count:16];
                }

                while (v32);
              }

              else
              {
                v34 = 0.0;
              }

              v37 = [MEMORY[0x277CCABB0] numberWithDouble:v27 + v34 * 0.5];
              [array addObject:v37];

              v38 = self->_factor * 7.0;
              v27 = v27 + v34 + roundf(v38);
            }

            v25 = [(NSMutableArray *)obj countByEnumeratingWithState:&v169 objects:v186 count:16];
          }

          while (v25);
        }

        else
        {
          v27 = 0.0;
        }

        factor = self->_factor;
        v59 = v157;
        if ([v157 count])
        {
          v100 = 0;
          v101 = factor * 7.0;
          v102 = factor * 6.0;
          v103 = v10 + v6 - roundf(v102);
          v104 = floor((v8 - (v27 - roundf(v101))) * 0.5);
          v105 = v104;
          do
          {
            v106 = [v59 objectAtIndex:{v100, v156}];
            v107 = [array objectAtIndex:v100];
            [v106 frame];
            v109 = v108;
            v111 = v110;
            [v107 floatValue];
            v113 = self->_factor * 4.0;
            [v106 setFrame:{floor(v104 + v112 + v109 * -0.5), v103 - v111 - roundf(v113), v109, v111}];
            v114 = [*(&self->super.super.super.isa + v156) objectAtIndex:v100];
            v161 = 0u;
            v162 = 0u;
            v163 = 0u;
            v164 = 0u;
            v115 = [v114 countByEnumeratingWithState:&v161 objects:v184 count:16];
            if (v115)
            {
              v116 = v115;
              v117 = *v162;
              do
              {
                for (k = 0; k != v116; ++k)
                {
                  if (*v162 != v117)
                  {
                    objc_enumerationMutation(v114);
                  }

                  v119 = *(*(&v161 + 1) + 8 * k);
                  [v119 frame];
                  v121 = v120;
                  v123 = v122;
                  [v106 frame];
                  MinY = CGRectGetMinY(v191);
                  v125 = self->_factor;
                  v126 = v125 * 4.0;
                  *&v125 = v125 * 5.0;
                  [v119 setFrame:{v105, MinY + roundf(v126) - roundf(*&v125) - v123, v121, v123}];
                  [v119 frame];
                  v105 = v105 + v127;
                }

                v116 = [v114 countByEnumeratingWithState:&v161 objects:v184 count:16];
              }

              while (v116);
            }

            v128 = self->_factor * 7.0;
            v105 = v105 + roundf(v128);

            ++v100;
            v59 = v157;
          }

          while (v100 < [v157 count]);
        }

LABEL_116:
        return;
      }

      null = self->_dateDescriptionLabelDay;
      if (!dateDescriptionLabelDay)
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      v183[0] = null;
      v53 = self->_dateDescriptionLabelHour;
      null2 = v53;
      if (!v53)
      {
        null2 = [MEMORY[0x277CBEB68] null];
      }

      v183[1] = null2;
      dateDescriptionLabelMinute = self->_dateDescriptionLabelMinute;
      null3 = dateDescriptionLabelMinute;
      if (!dateDescriptionLabelMinute)
      {
        null3 = [MEMORY[0x277CBEB68] null];
      }

      v183[2] = null3;
      v57 = self->_dateDescriptionLabelSecond;
      null4 = v57;
      if (!v57)
      {
        null4 = [MEMORY[0x277CBEB68] null];
      }

      v183[3] = null4;
      v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v183 count:4];
      if (!v57)
      {
      }

      if (!dateDescriptionLabelMinute)
      {
      }

      if (!v53)
      {
      }

      if (!dateDescriptionLabelDay)
      {
      }

      dateLabelDay = self->_dateLabelDay;
      null5 = dateLabelDay;
      if (!dateLabelDay)
      {
        null5 = [MEMORY[0x277CBEB68] null];
      }

      v160 = null5;
      v182[0] = null5;
      dateLabelHour = self->_dateLabelHour;
      null6 = dateLabelHour;
      if (!dateLabelHour)
      {
        null6 = [MEMORY[0x277CBEB68] null];
      }

      v182[1] = null6;
      dateLabelMinute = self->_dateLabelMinute;
      null7 = dateLabelMinute;
      if (!dateLabelMinute)
      {
        null7 = [MEMORY[0x277CBEB68] null];
      }

      v182[2] = null7;
      dateLabelSecond = self->_dateLabelSecond;
      null8 = dateLabelSecond;
      if (!dateLabelSecond)
      {
        null8 = [MEMORY[0x277CBEB68] null];
      }

      v182[3] = null8;
      v68 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:4];
      if (dateLabelSecond)
      {
        if (dateLabelMinute)
        {
          goto LABEL_68;
        }
      }

      else
      {

        if (dateLabelMinute)
        {
LABEL_68:
          if (dateLabelHour)
          {
            goto LABEL_69;
          }

          goto LABEL_107;
        }
      }

      if (dateLabelHour)
      {
LABEL_69:
        if (dateLabelDay)
        {
LABEL_70:
          array2 = [MEMORY[0x277CBEB18] array];
          if ([v59 count])
          {
            v70 = 0;
            v71 = 0.0;
            do
            {
              v72 = [v59 objectAtIndex:v70];
              v73 = [v68 objectAtIndex:v70];
              null9 = [MEMORY[0x277CBEB68] null];

              if (v73 == null9)
              {
                null10 = [MEMORY[0x277CBEB68] null];
                [array2 addObject:null10];
              }

              else
              {
                [v72 frame];
                v76 = v75;
                [v73 frame];
                if (v76 < v77 + -5.0)
                {
                  v76 = v77 + -5.0;
                }

                v78 = [MEMORY[0x277CCABB0] numberWithDouble:v71 + v76 * 0.5];
                [array2 addObject:v78];

                v79 = self->_factor * 14.0;
                v71 = v71 + v76 + roundf(v79);
              }

              ++v70;
            }

            while (v70 < [v59 count]);
          }

          else
          {
            v71 = 0.0;
          }

          v129 = self->_factor;
          if ([v59 count])
          {
            v130 = 0;
            v131 = v129 * 14.0;
            v132 = v129 * 8.0;
            v133 = v10 + v6 - roundf(v132);
            v134 = floor((v8 - (v71 - roundf(v131))) * 0.5);
            do
            {
              v135 = [v59 objectAtIndex:v130];
              v136 = [v68 objectAtIndex:v130];
              v137 = [array2 objectAtIndex:v130];
              null11 = [MEMORY[0x277CBEB68] null];

              if (v136 != null11)
              {
                [v135 frame];
                v140 = v139;
                v142 = v141;
                [v137 floatValue];
                v144 = self->_factor * 4.0;
                [v135 setFrame:{floor(v134 + v143 - v140 * 0.5), v133 - v142 - roundf(v144), v140, v142}];
                [v136 frame];
                v146 = v145;
                v148 = v147;
                [v137 floatValue];
                v150 = floor(v134 + v149 - v146 * 0.5);
                [v135 frame];
                v151 = CGRectGetMinY(v192);
                v152 = self->_factor;
                v153 = v152 * 4.0;
                v154 = v151 + roundf(v153);
                v155 = v152 * 5.0;
                *&v152 = v152 * 7.0;
                [v136 setFrame:{v150, v154 - roundf(v155) - v148 + roundf(*&v152), v146, v148}];
              }

              ++v130;
            }

            while (v130 < [v59 count]);
          }

          goto LABEL_116;
        }

LABEL_108:

        goto LABEL_70;
      }

LABEL_107:

      if (dateLabelDay)
      {
        goto LABEL_70;
      }

      goto LABEL_108;
    }

    if ([(SKUICountdown *)countdown isFlapped])
    {
      if ([(NSMutableArray *)self->_numberFlapLabels count])
      {
        v39 = 0;
        v40 = 0.0;
        do
        {
          v41 = [(NSMutableArray *)self->_numberFlapLabels objectAtIndex:v39];
          v177 = 0u;
          v178 = 0u;
          v179 = 0u;
          v180 = 0u;
          v42 = [v41 countByEnumeratingWithState:&v177 objects:v189 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v178;
            do
            {
              for (m = 0; m != v43; ++m)
              {
                if (*v178 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                [*(*(&v177 + 1) + 8 * m) frame];
                v40 = v40 + v46;
              }

              v43 = [v41 countByEnumeratingWithState:&v177 objects:v189 count:16];
            }

            while (v43);
          }

          v47 = self->_factor * 7.0;
          v40 = v40 + roundf(v47);

          ++v39;
        }

        while (v39 < [(NSMutableArray *)self->_numberFlapLabels count]);
      }

      else
      {
        v40 = 0.0;
      }

      v81 = self->_factor;
      if ([(NSMutableArray *)self->_numberFlapLabels count])
      {
        v82 = 0;
        v83 = v81 * 8.0;
        v84 = v10 + v6 - roundf(v83);
        v85 = v81 * 7.0;
        v86 = floor((v8 - (v40 - roundf(v85))) * 0.5);
        do
        {
          v87 = [(NSMutableArray *)self->_numberFlapLabels objectAtIndex:v82];
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v88 = [v87 countByEnumeratingWithState:&v173 objects:v188 count:16];
          if (v88)
          {
            v89 = v88;
            v90 = *v174;
            do
            {
              for (n = 0; n != v89; ++n)
              {
                if (*v174 != v90)
                {
                  objc_enumerationMutation(v87);
                }

                v92 = *(*(&v173 + 1) + 8 * n);
                [v92 frame];
                v94 = v93;
                [v92 setFrame:{v86, v84 - v95}];
                v86 = v86 + v94;
              }

              v89 = [v87 countByEnumeratingWithState:&v173 objects:v188 count:16];
            }

            while (v89);
          }

          if ([(NSMutableArray *)self->_numberSeparatorLabels count]> v82)
          {
            v96 = [(NSMutableArray *)self->_numberSeparatorLabels objectAtIndex:v82];
            [v96 frame];
            [v96 setFrame:{v86, v84 - v97 + 5.0}];
          }

          v98 = self->_factor * 7.0;
          v86 = v86 + roundf(v98);

          ++v82;
        }

        while (v82 < [(NSMutableArray *)self->_numberFlapLabels count]);
      }
    }

    else
    {
      numberLabel = self->_numberLabel;
      if (numberLabel)
      {
        [(UILabel *)numberLabel sizeToFit];
        [(UILabel *)self->_numberLabel frame];
        v50 = self->_factor;
        v51 = v50 * 12.0;
        *&v50 = v50 * 7.0;
        [(UILabel *)self->_numberLabel setFrame:v4, v10 + v6 - v49 - roundf(v51) + roundf(*&v50), v8];
      }
    }
  }
}

- (id)_newDateLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  fontColor = [(SKUICountdown *)self->_countdown fontColor];
  [v3 setTextColor:fontColor];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setTextAlignment:1];
  return v3;
}

- (id)_newFlapLabelWithPosition:(int64_t)position
{
  flapTopColor = [(SKUICountdown *)self->_countdown flapTopColor];
  flapBottomColor = [(SKUICountdown *)self->_countdown flapBottomColor];
  v7 = [[SKUICountdownFlapView alloc] initWithPosition:position flapTopColor:flapTopColor flapBottomColor:flapBottomColor];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(SKUICountdownFlapView *)v7 setBackgroundColor:clearColor];

  fontColor = [(SKUICountdown *)self->_countdown fontColor];
  [(SKUICountdownFlapView *)v7 setTextColor:fontColor];

  return v7;
}

- (id)_newDateDescriptionLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  fontColor = [(SKUICountdown *)self->_countdown fontColor];
  if (fontColor)
  {
    [v3 setTextColor:fontColor];
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v3 setTextColor:blackColor];
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setTextAlignment:1];
  return v3;
}

- (id)_newNumberSeparatorLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  flapTopColor = [(SKUICountdown *)self->_countdown flapTopColor];
  if (flapTopColor)
  {
    [v3 setTextColor:flapTopColor];
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v3 setTextColor:blackColor];
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v3 setBackgroundColor:clearColor];

  [v3 setTextAlignment:1];
  return v3;
}

- (void)_reload
{
  if ([(SKUICountdown *)self->_countdown isLoaded])
  {
    type = [(SKUICountdown *)self->_countdown type];
    countdown = self->_countdown;
    if (type)
    {
      if ([(SKUICountdown *)countdown type]== 1)
      {
        if ([(SKUICountdown *)self->_countdown isFlapped])
        {
          [(SKUICountdownView *)self _reloadTimeFlapped];
          selfCopy2 = self;
          v6 = 0;
        }

        else
        {
          [(SKUICountdownView *)self _reloadTime];
          selfCopy2 = self;
          v6 = 1;
        }

        [(SKUICountdownView *)selfCopy2 _reloadDateDescriptions:v6];
      }
    }

    else if ([(SKUICountdown *)countdown isFlapped])
    {

      [(SKUICountdownView *)self _reloadNumberFlapped];
    }

    else
    {

      [(SKUICountdownView *)self _reloadNumber];
    }
  }
}

- (void)_reloadNumber
{
  if (!self->_numberLabel)
  {
    v3 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberLabel = self->_numberLabel;
    self->_numberLabel = v3;

    v5 = self->_numberLabel;
    fontColor = [(SKUICountdown *)self->_countdown fontColor];
    if (fontColor)
    {
      [(UILabel *)v5 setTextColor:fontColor];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)v5 setTextColor:blackColor];
    }

    v8 = self->_numberLabel;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v8 setBackgroundColor:clearColor];

    [(UILabel *)self->_numberLabel setTextAlignment:1];
    [(SKUICountdownView *)self addSubview:self->_numberLabel];
    [(SKUICountdownView *)self setNeedsLayout];
  }

  numberFormatter = self->_numberFormatter;
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SKUICountdownView _currentValue](self, "_currentValue")}];
  v12 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v11];

  [(UILabel *)self->_numberLabel setText:v12];
}

- (void)_reloadNumberFlapped
{
  v57 = *MEMORY[0x277D85DE8];
  if (!self->_numberFlapLabels)
  {
    positiveFormat = [(NSNumberFormatter *)self->_numberFormatter positiveFormat];
    v4 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#"];
    v5 = MEMORY[0x277CBEB18];
    v44 = v4;
    v6 = [positiveFormat componentsSeparatedByCharactersInSet:?];
    v7 = [v5 arrayWithArray:v6];

    [v7 removeObject:&stru_2827FFAC8];
    array = [MEMORY[0x277CBEB18] array];
    numberSeparatorLabels = self->_numberSeparatorLabels;
    self->_numberSeparatorLabels = array;

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = v7;
    v10 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v52;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v52 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v51 + 1) + 8 * i);
          _newNumberSeparatorLabel = [(SKUICountdownView *)self _newNumberSeparatorLabel];
          [_newNumberSeparatorLabel setText:v14];
          [_newNumberSeparatorLabel sizeToFit];
          [(SKUICountdownView *)self addSubview:_newNumberSeparatorLabel];
          [(NSMutableArray *)self->_numberSeparatorLabels addObject:_newNumberSeparatorLabel];
        }

        v11 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v11);
    }

    v16 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"#"];
    invertedSet = [v16 invertedSet];

    v45 = positiveFormat;
    v18 = [positiveFormat componentsSeparatedByCharactersInSet:invertedSet];
    array2 = [MEMORY[0x277CBEB18] array];
    numberFlapLabels = self->_numberFlapLabels;
    self->_numberFlapLabels = array2;

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v47 + 1) + 8 * j);
          array3 = [MEMORY[0x277CBEB18] array];
          if ([v26 length])
          {
            v28 = 0;
            do
            {
              if ([v26 length] == 1)
              {
                v29 = 3;
              }

              else if (v28)
              {
                if (v28 == [v26 length] - 1)
                {
                  v29 = 2;
                }

                else
                {
                  v29 = 1;
                }
              }

              else
              {
                v29 = 0;
              }

              v30 = [(SKUICountdownView *)self _newFlapLabelWithPosition:v29];
              [(SKUICountdownView *)self addSubview:v30];
              [array3 addObject:v30];

              ++v28;
            }

            while (v28 < [v26 length]);
          }

          [(NSMutableArray *)self->_numberFlapLabels addObject:array3];
        }

        v23 = [v21 countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v23);
    }
  }

  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", -[SKUICountdownView _currentValue](self, "_currentValue")];
  array4 = [MEMORY[0x277CBEB18] array];
  if ([v31 length])
  {
    v33 = 0;
    do
    {
      v34 = [v31 substringWithRange:{v33, 1}];
      [array4 addObject:v34];

      ++v33;
    }

    while (v33 < [v31 length]);
  }

  reverseObjectEnumerator = [array4 reverseObjectEnumerator];
  v36 = [(NSMutableArray *)self->_numberFlapLabels count]- 1;
  if (v36 >= 0)
  {
    do
    {
      v37 = [(NSMutableArray *)self->_numberFlapLabels objectAtIndex:v36];
      v38 = [v37 count] - 1;
      if (v38 >= 0)
      {
        do
        {
          v39 = [v37 objectAtIndex:v38];
          nextObject = [reverseObjectEnumerator nextObject];
          v41 = nextObject;
          if (nextObject)
          {
            v42 = nextObject;
          }

          else
          {
            v42 = @"0";
          }

          [v39 setString:v42];

          --v38;
        }

        while (v38 != -1);
      }
    }

    while (v36-- > 0);
  }
}

- (void)_reloadDateDescriptions:(BOOL)descriptions
{
  descriptionsCopy = descriptions;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  [(SKUICountdownView *)self _currentRemainingDays:&v37 hours:&v36 minutes:&v35 seconds:&v34];
  dateDescriptionLabelDay = self->_dateDescriptionLabelDay;
  if (v37)
  {
    v6 = 1;
  }

  else
  {
    v6 = !descriptionsCopy;
  }

  if (v6)
  {
    if (!dateDescriptionLabelDay)
    {
      _newDateDescriptionLabel = [(SKUICountdownView *)self _newDateDescriptionLabel];
      v8 = self->_dateDescriptionLabelDay;
      self->_dateDescriptionLabelDay = _newDateDescriptionLabel;

      v9 = self->_dateDescriptionLabelDay;
      clientContext = self->_clientContext;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"COUNTDOWN_DAYS"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"COUNTDOWN_DAYS" inBundles:0];
      }
      v12 = ;
      [(UILabel *)v9 setText:v12];

      [(UILabel *)self->_dateDescriptionLabelDay sizeToFit];
      [(SKUICountdownView *)self addSubview:self->_dateDescriptionLabelDay];
      goto LABEL_13;
    }
  }

  else if (dateDescriptionLabelDay)
  {
    [(UILabel *)dateDescriptionLabelDay removeFromSuperview];
    v11 = self->_dateDescriptionLabelDay;
    self->_dateDescriptionLabelDay = 0;

LABEL_13:
    [(SKUICountdownView *)self setNeedsLayout];
  }

  dateDescriptionLabelHour = self->_dateDescriptionLabelHour;
  if (v37 || v36 || !descriptionsCopy)
  {
    if (!dateDescriptionLabelHour)
    {
      _newDateDescriptionLabel2 = [(SKUICountdownView *)self _newDateDescriptionLabel];
      v16 = self->_dateDescriptionLabelHour;
      self->_dateDescriptionLabelHour = _newDateDescriptionLabel2;

      v17 = self->_dateDescriptionLabelHour;
      v18 = self->_clientContext;
      if (v18)
      {
        [(SKUIClientContext *)v18 localizedStringForKey:@"COUNTDOWN_HOURS"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"COUNTDOWN_HOURS" inBundles:0];
      }
      v19 = ;
      [(UILabel *)v17 setText:v19];

      [(UILabel *)self->_dateDescriptionLabelHour sizeToFit];
      [(SKUICountdownView *)self addSubview:self->_dateDescriptionLabelHour];
      goto LABEL_24;
    }
  }

  else if (dateDescriptionLabelHour)
  {
    [(UILabel *)dateDescriptionLabelHour removeFromSuperview];
    v14 = self->_dateDescriptionLabelHour;
    self->_dateDescriptionLabelHour = 0;

LABEL_24:
    [(SKUICountdownView *)self setNeedsLayout];
  }

  dateDescriptionLabelMinute = self->_dateDescriptionLabelMinute;
  if (v37 || v36 || v35 || !descriptionsCopy)
  {
    if (!dateDescriptionLabelMinute)
    {
      _newDateDescriptionLabel3 = [(SKUICountdownView *)self _newDateDescriptionLabel];
      v23 = self->_dateDescriptionLabelMinute;
      self->_dateDescriptionLabelMinute = _newDateDescriptionLabel3;

      v24 = self->_dateDescriptionLabelMinute;
      v25 = self->_clientContext;
      if (v25)
      {
        [(SKUIClientContext *)v25 localizedStringForKey:@"COUNTDOWN_MINUTES"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"COUNTDOWN_MINUTES" inBundles:0];
      }
      v26 = ;
      [(UILabel *)v24 setText:v26];

      [(UILabel *)self->_dateDescriptionLabelMinute sizeToFit];
      [(SKUICountdownView *)self addSubview:self->_dateDescriptionLabelMinute];
      goto LABEL_36;
    }
  }

  else if (dateDescriptionLabelMinute)
  {
    [(UILabel *)dateDescriptionLabelMinute removeFromSuperview];
    v21 = self->_dateDescriptionLabelMinute;
    self->_dateDescriptionLabelMinute = 0;

LABEL_36:
    [(SKUICountdownView *)self setNeedsLayout];
  }

  dateDescriptionLabelSecond = self->_dateDescriptionLabelSecond;
  if (v37 || v36 || v35 || v34 || !descriptionsCopy)
  {
    if (dateDescriptionLabelSecond)
    {
      return;
    }

    _newDateDescriptionLabel4 = [(SKUICountdownView *)self _newDateDescriptionLabel];
    v30 = self->_dateDescriptionLabelSecond;
    self->_dateDescriptionLabelSecond = _newDateDescriptionLabel4;

    v31 = self->_dateDescriptionLabelSecond;
    v32 = self->_clientContext;
    if (v32)
    {
      [(SKUIClientContext *)v32 localizedStringForKey:@"COUNTDOWN_SECONDS"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"COUNTDOWN_SECONDS" inBundles:0];
    }
    v33 = ;
    [(UILabel *)v31 setText:v33];

    [(UILabel *)self->_dateDescriptionLabelSecond sizeToFit];
    [(SKUICountdownView *)self addSubview:self->_dateDescriptionLabelSecond];
  }

  else
  {
    if (!dateDescriptionLabelSecond)
    {
      return;
    }

    [(UILabel *)dateDescriptionLabelSecond removeFromSuperview];
    v28 = self->_dateDescriptionLabelSecond;
    self->_dateDescriptionLabelSecond = 0;
  }

  [(SKUICountdownView *)self setNeedsLayout];
}

- (void)_reloadTime
{
  v29 = 0uLL;
  v27 = 0;
  v28 = 0;
  [(SKUICountdownView *)self _currentRemainingDays:&v29 + 8 hours:&v29 minutes:&v28 seconds:&v27];
  v3 = *(&v29 + 1);
  dateLabelDay = self->_dateLabelDay;
  if (*(&v29 + 1))
  {
    if (!dateLabelDay)
    {
      _newDateLabel = [(SKUICountdownView *)self _newDateLabel];
      v6 = self->_dateLabelDay;
      self->_dateLabelDay = _newDateLabel;

      [(SKUICountdownView *)self addSubview:self->_dateLabelDay];
      [(SKUICountdownView *)self setNeedsLayout];
      dateLabelDay = self->_dateLabelDay;
      v3 = *(&v29 + 1);
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld", v3];
    [(UILabel *)dateLabelDay setText:v7];
  }

  else if (dateLabelDay)
  {
    [(UILabel *)self->_dateLabelDay removeFromSuperview];
    v8 = self->_dateLabelDay;
    self->_dateLabelDay = 0;

    [(SKUICountdownView *)self setNeedsLayout];
  }

  v9 = v29;
  dateLabelHour = self->_dateLabelHour;
  if (v29 == 0)
  {
    if (dateLabelHour)
    {
      [(UILabel *)self->_dateLabelHour removeFromSuperview];
      v14 = self->_dateLabelHour;
      self->_dateLabelHour = 0;

      [(SKUICountdownView *)self setNeedsLayout];
    }
  }

  else
  {
    if (!dateLabelHour)
    {
      _newDateLabel2 = [(SKUICountdownView *)self _newDateLabel];
      v12 = self->_dateLabelHour;
      self->_dateLabelHour = _newDateLabel2;

      [(SKUICountdownView *)self addSubview:self->_dateLabelHour];
      [(SKUICountdownView *)self setNeedsLayout];
      dateLabelHour = self->_dateLabelHour;
      v9 = v29;
    }

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld", v9];
    [(UILabel *)dateLabelHour setText:v13];
  }

  v15 = v28;
  dateLabelMinute = self->_dateLabelMinute;
  if (v29 != 0 || v28)
  {
    if (!dateLabelMinute)
    {
      _newDateLabel3 = [(SKUICountdownView *)self _newDateLabel];
      v19 = self->_dateLabelMinute;
      self->_dateLabelMinute = _newDateLabel3;

      [(SKUICountdownView *)self addSubview:self->_dateLabelMinute];
      [(SKUICountdownView *)self setNeedsLayout];
      dateLabelMinute = self->_dateLabelMinute;
      v15 = v28;
    }

    v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld", v15];
    [(UILabel *)dateLabelMinute setText:v20];
  }

  else if (dateLabelMinute)
  {
    [(UILabel *)self->_dateLabelMinute removeFromSuperview];
    v17 = self->_dateLabelMinute;
    self->_dateLabelMinute = 0;

    [(SKUICountdownView *)self setNeedsLayout];
  }

  v21 = v27;
  dateLabelSecond = self->_dateLabelSecond;
  if (v29 != 0 || v28 || v27)
  {
    if (!dateLabelSecond)
    {
      _newDateLabel4 = [(SKUICountdownView *)self _newDateLabel];
      v25 = self->_dateLabelSecond;
      self->_dateLabelSecond = _newDateLabel4;

      [(SKUICountdownView *)self addSubview:self->_dateLabelSecond];
      [(SKUICountdownView *)self setNeedsLayout];
      dateLabelSecond = self->_dateLabelSecond;
      v21 = v27;
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02ld", v21];
    [(UILabel *)dateLabelSecond setText:v26];
  }

  else if (dateLabelSecond)
  {
    [(UILabel *)self->_dateLabelSecond removeFromSuperview];
    v23 = self->_dateLabelSecond;
    self->_dateLabelSecond = 0;

    [(SKUICountdownView *)self setNeedsLayout];
  }
}

- (void)_reloadTimeFlapped
{
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  [(SKUICountdownView *)self _currentRemainingDays:&v37 hours:&v36 minutes:&v35 seconds:&v34];
  dateFlapLabels = self->_dateFlapLabels;
  if (!dateFlapLabels)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_dateFlapLabels;
    self->_dateFlapLabels = array;

    v6 = 4;
    do
    {
      array2 = [MEMORY[0x277CBEB18] array];
      v8 = [(SKUICountdownView *)self _newFlapLabelWithPosition:0];
      [(SKUICountdownView *)self addSubview:v8];
      [array2 addObject:v8];

      v9 = [(SKUICountdownView *)self _newFlapLabelWithPosition:2];
      [(SKUICountdownView *)self addSubview:v9];
      [array2 addObject:v9];

      [(NSMutableArray *)self->_dateFlapLabels addObject:array2];
      --v6;
    }

    while (v6);
    dateFlapLabels = self->_dateFlapLabels;
  }

  v10 = [(NSMutableArray *)dateFlapLabels objectAtIndex:0];
  v11 = [v10 objectAtIndex:1];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v37 % 10];
  [v11 setString:v12];

  v13 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:0];
  v14 = [v13 objectAtIndex:0];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v37 / 10 % 10];
  [v14 setString:v15];

  v16 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:1];
  v17 = [v16 objectAtIndex:1];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v36 % 10];
  [v17 setString:v18];

  v19 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:1];
  v20 = [v19 objectAtIndex:0];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v36 / 10 % 10];
  [v20 setString:v21];

  v22 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:2];
  v23 = [v22 objectAtIndex:1];
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v35 % 10];
  [v23 setString:v24];

  v25 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:2];
  v26 = [v25 objectAtIndex:0];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v35 / 10 % 10];
  [v26 setString:v27];

  v28 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:3];
  v29 = [v28 objectAtIndex:1];
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v34 % 10];
  [v29 setString:v30];

  v31 = [(NSMutableArray *)self->_dateFlapLabels objectAtIndex:3];
  v32 = [v31 objectAtIndex:0];
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v34 / 10 % 10];
  [v32 setString:v33];
}

- (void)_reloadFontSizes
{
  v119 = *MEMORY[0x277D85DE8];
  if (self->_factor == 0.0 || ![(SKUICountdown *)self->_countdown isLoaded])
  {
    return;
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  obj = self->_numberFlapLabels;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v106 objects:v118 count:16];
  if (v3)
  {
    v4 = v3;
    v78 = *v107;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v107 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v106 + 1) + 8 * i);
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v102 objects:v117 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v103;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v103 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v102 + 1) + 8 * j);
              [v12 sizeThatFits:{self->_factor * 14.0, self->_factor * 32.0}];
              [v12 setFrame:{0.0, 0.0, v13, v14}];
            }

            v9 = [v7 countByEnumeratingWithState:&v102 objects:v117 count:16];
          }

          while (v9);
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v106 objects:v118 count:16];
    }

    while (v4);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  obja = self->_dateFlapLabels;
  v15 = [(NSMutableArray *)obja countByEnumeratingWithState:&v98 objects:v116 count:16];
  if (v15)
  {
    v16 = v15;
    v79 = *v99;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v99 != v79)
        {
          objc_enumerationMutation(obja);
        }

        v18 = *(*(&v98 + 1) + 8 * k);
        v94 = 0u;
        v95 = 0u;
        v96 = 0u;
        v97 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v94 objects:v115 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v95;
          do
          {
            for (m = 0; m != v21; ++m)
            {
              if (*v95 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v94 + 1) + 8 * m);
              [v24 sizeThatFits:{self->_factor * 14.0, self->_factor * 32.0}];
              [v24 setFrame:{0.0, 0.0, v25, v26}];
            }

            v21 = [v19 countByEnumeratingWithState:&v94 objects:v115 count:16];
          }

          while (v21);
        }
      }

      v16 = [(NSMutableArray *)obja countByEnumeratingWithState:&v98 objects:v116 count:16];
    }

    while (v16);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v27 = self->_numberSeparatorLabels;
  v28 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v90 objects:v114 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v91;
    do
    {
      for (n = 0; n != v29; ++n)
      {
        if (*v91 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v90 + 1) + 8 * n);
        v33 = self->_factor * 24.0;
        v34 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v33)];
        [v32 setFont:v34];

        [v32 sizeToFit];
      }

      v29 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v90 objects:v114 count:16];
    }

    while (v29);
  }

  dateLabelDay = self->_dateLabelDay;
  null = dateLabelDay;
  if (!dateLabelDay)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v80 = null;
  v113[0] = null;
  dateLabelHour = self->_dateLabelHour;
  null2 = dateLabelHour;
  if (!dateLabelHour)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v113[1] = null2;
  dateLabelMinute = self->_dateLabelMinute;
  null3 = dateLabelMinute;
  if (!dateLabelMinute)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v113[2] = null3;
  dateLabelSecond = self->_dateLabelSecond;
  null4 = dateLabelSecond;
  if (!dateLabelSecond)
  {
    null4 = [MEMORY[0x277CBEB68] null];
  }

  v113[3] = null4;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:4];
  if (dateLabelSecond)
  {
    if (dateLabelMinute)
    {
      goto LABEL_48;
    }
  }

  else
  {

    if (dateLabelMinute)
    {
LABEL_48:
      if (dateLabelHour)
      {
        goto LABEL_49;
      }

LABEL_85:

      if (dateLabelDay)
      {
        goto LABEL_50;
      }

      goto LABEL_86;
    }
  }

  if (!dateLabelHour)
  {
    goto LABEL_85;
  }

LABEL_49:
  if (dateLabelDay)
  {
    goto LABEL_50;
  }

LABEL_86:

LABEL_50:
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v81 = v43;
  v44 = [v81 countByEnumeratingWithState:&v86 objects:v112 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v87;
    do
    {
      for (ii = 0; ii != v45; ++ii)
      {
        if (*v87 != v46)
        {
          objc_enumerationMutation(v81);
        }

        v48 = *(*(&v86 + 1) + 8 * ii);
        null5 = [MEMORY[0x277CBEB68] null];

        if (v48 != null5)
        {
          text = [v48 text];
          v51 = self->_factor * 28.0;
          v52 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v51)];
          [v48 setFont:v52];

          [v48 setText:@"00"];
          [v48 sizeToFit];
          [v48 frame];
          [v48 setFrame:?];
          [v48 setText:text];
        }
      }

      v45 = [v81 countByEnumeratingWithState:&v86 objects:v112 count:16];
    }

    while (v45);
  }

  dateDescriptionLabelDay = self->_dateDescriptionLabelDay;
  null6 = dateDescriptionLabelDay;
  if (!dateDescriptionLabelDay)
  {
    null6 = [MEMORY[0x277CBEB68] null];
  }

  objb = null6;
  v111[0] = null6;
  dateDescriptionLabelHour = self->_dateDescriptionLabelHour;
  null7 = dateDescriptionLabelHour;
  if (!dateDescriptionLabelHour)
  {
    null7 = [MEMORY[0x277CBEB68] null];
  }

  v111[1] = null7;
  dateDescriptionLabelMinute = self->_dateDescriptionLabelMinute;
  null8 = dateDescriptionLabelMinute;
  if (!dateDescriptionLabelMinute)
  {
    null8 = [MEMORY[0x277CBEB68] null];
  }

  v111[2] = null8;
  dateDescriptionLabelSecond = self->_dateDescriptionLabelSecond;
  null9 = dateDescriptionLabelSecond;
  if (!dateDescriptionLabelSecond)
  {
    null9 = [MEMORY[0x277CBEB68] null];
  }

  v111[3] = null9;
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v111 count:{4, objb}];
  if (dateDescriptionLabelSecond)
  {
    if (dateDescriptionLabelMinute)
    {
      goto LABEL_69;
    }

LABEL_88:

    if (dateDescriptionLabelHour)
    {
      goto LABEL_70;
    }

LABEL_89:

    goto LABEL_70;
  }

  if (!dateDescriptionLabelMinute)
  {
    goto LABEL_88;
  }

LABEL_69:
  if (!dateDescriptionLabelHour)
  {
    goto LABEL_89;
  }

LABEL_70:
  if (!dateDescriptionLabelDay)
  {
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v62 = v61;
  v63 = [v62 countByEnumeratingWithState:&v82 objects:v110 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v83;
    do
    {
      for (jj = 0; jj != v64; ++jj)
      {
        if (*v83 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = *(*(&v82 + 1) + 8 * jj);
        null10 = [MEMORY[0x277CBEB68] null];

        if (v67 != null10)
        {
          v69 = self->_factor * 14.0;
          v70 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v69)];
          [v67 setFont:v70];

          [v67 sizeToFit];
        }
      }

      v64 = [v62 countByEnumeratingWithState:&v82 objects:v110 count:16];
    }

    while (v64);
  }

  numberLabel = self->_numberLabel;
  v72 = self->_factor * 28.0;
  v73 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v72)];
  [(UILabel *)numberLabel setFont:v73];

  [(SKUICountdownView *)self setNeedsLayout];
}

- (int64_t)_currentValue
{
  initialValue = [(SKUICountdown *)self->_countdown initialValue];
  startDate = [(SKUICountdown *)self->_countdown startDate];
  [startDate timeIntervalSinceNow];
  v6 = v5;
  rate = [(SKUICountdown *)self->_countdown rate];
  initialValue2 = [(SKUICountdown *)self->_countdown initialValue];
  finalValue = [(SKUICountdown *)self->_countdown finalValue];
  v10 = -1.0;
  if (initialValue2 < finalValue)
  {
    v10 = 1.0;
  }

  v11 = (initialValue + -(v6 * rate) * v10);

  if (v11 < 0)
  {
    return 0;
  }

  if ([(SKUICountdown *)self->_countdown finalValue]>= v11)
  {
    return v11;
  }

  countdown = self->_countdown;

  return [(SKUICountdown *)countdown finalValue];
}

- (void)_currentRemainingDays:(int64_t *)days hours:(int64_t *)hours minutes:(int64_t *)minutes seconds:(int64_t *)seconds
{
  endDate = [(SKUICountdown *)self->_countdown endDate];
  [endDate timeIntervalSinceNow];
  v12 = v11;

  v13 = 0.0;
  if (v12 >= 0.0)
  {
    v13 = v12;
  }

  if (days)
  {
    *days = (v13 / 86400.0);
  }

  if (hours)
  {
    *hours = (v13 / 3600.0) % 24;
  }

  if (minutes)
  {
    *minutes = (v13 / 60.0) % 60;
  }

  if (seconds)
  {
    *seconds = v13 % 60;
  }
}

- (void)_setCountdownWithResponse:(id)response error:(id)error
{
  responseCopy = response;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SKUICountdown *)self->_countdown updateWithDictionary:responseCopy];
    [(SKUICountdownView *)self _reload];
    [(SKUICountdownView *)self _reloadFontSizes];
    [(SKUICountdownView *)self start];
  }
}

- (void)initWithCountdown:clientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUICountdownView initWithCountdown:clientContext:]";
}

@end