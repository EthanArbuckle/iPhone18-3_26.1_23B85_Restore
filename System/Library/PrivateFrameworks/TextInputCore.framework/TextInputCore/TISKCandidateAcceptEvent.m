@interface TISKCandidateAcceptEvent
- (void)reportToSession:(id)a3;
@end

@implementation TISKCandidateAcceptEvent

- (void)reportToSession:(id)a3
{
  v24 = a3;
  v4 = [(TISKEvent *)self isValidCandidate:self->_candidate];
  v5 = v24;
  if (!v4)
  {
    goto LABEL_37;
  }

  [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfWordsCounter];
  if ([(TISKCandidateAcceptEvent *)self isAutocorrection])
  {
    [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfAutoCorrections];
  }

  v6 = [(TIKeyboardCandidate *)self->_candidate usageTrackingMask];
  v7 = v6;
  if ((v6 & 0x10) != 0)
  {
    [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfSpaceCorrections];
    if ((v7 & 0x20) == 0)
    {
LABEL_6:
      if ((v7 & 0x400) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if ((v6 & 0x20) == 0)
  {
    goto LABEL_6;
  }

  [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfRetroCorrections];
  if ((v7 & 0x400) == 0)
  {
LABEL_7:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfTranspositionCorrections];
  if ((v7 & 0x800) == 0)
  {
LABEL_8:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfInsertKeyCorrections];
  if ((v7 & 0x1000) == 0)
  {
LABEL_9:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfSkipTouchCorrections];
  if ((v7 & 0x4000) == 0)
  {
LABEL_10:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfSubstitutionCorrections];
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfNearKeyCorrections];
  if ((v7 & 0x8000) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v7 & 0x10000) != 0)
  {
LABEL_12:
    [v24 addSample:&unk_28400BF10 forKey:kTISKNumberOfHitTestCorrections];
  }

LABEL_13:
  v8 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];

  v5 = v24;
  if (!v8)
  {
    goto LABEL_37;
  }

  v9 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
  v10 = [v9 isEqualToString:@"absolutistWord"];

  if (v10)
  {
    v11 = &kTISKtotalAbsolutistWords;
  }

  else
  {
    v12 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
    v13 = [v12 isEqualToString:@"downWord"];

    if (v13)
    {
      v11 = &kTISKtotalDownWords;
    }

    else
    {
      v14 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
      v15 = [v14 isEqualToString:@"deathWord"];

      if (v15)
      {
        v11 = &kTISKtotalDeathWords;
      }

      else
      {
        v16 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
        v17 = [v16 isEqualToString:@"anxietyWord"];

        if (v17)
        {
          v11 = &kTISKtotalAnxietyWords;
        }

        else
        {
          v18 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
          v19 = [v18 isEqualToString:@"angerWord"];

          if (v19)
          {
            v11 = &kTISKtotalAngerWords;
          }

          else
          {
            v20 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
            v21 = [v20 isEqualToString:@"healthFeelingWord"];

            if (v21)
            {
              v11 = &kTISKtotalHealthFeelingWords;
            }

            else
            {
              v22 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
              v23 = [v22 isEqualToString:@"positiveWord"];

              v5 = v24;
              if (!v23)
              {
                goto LABEL_37;
              }

              v11 = &kTISKtotalPositiveWords;
            }
          }
        }
      }
    }
  }

  v4 = [v24 addSample:&unk_28400BF10 forKey:*v11];
  v5 = v24;
LABEL_37:

  MEMORY[0x2821F96F8](v4, v5);
}

@end