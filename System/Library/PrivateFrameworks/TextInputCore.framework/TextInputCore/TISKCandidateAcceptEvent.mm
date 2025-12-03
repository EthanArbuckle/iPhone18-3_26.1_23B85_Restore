@interface TISKCandidateAcceptEvent
- (void)reportToSession:(id)session;
@end

@implementation TISKCandidateAcceptEvent

- (void)reportToSession:(id)session
{
  sessionCopy = session;
  v4 = [(TISKEvent *)self isValidCandidate:self->_candidate];
  v5 = sessionCopy;
  if (!v4)
  {
    goto LABEL_37;
  }

  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfWordsCounter];
  if ([(TISKCandidateAcceptEvent *)self isAutocorrection])
  {
    [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfAutoCorrections];
  }

  usageTrackingMask = [(TIKeyboardCandidate *)self->_candidate usageTrackingMask];
  v7 = usageTrackingMask;
  if ((usageTrackingMask & 0x10) != 0)
  {
    [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfSpaceCorrections];
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

  else if ((usageTrackingMask & 0x20) == 0)
  {
    goto LABEL_6;
  }

  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfRetroCorrections];
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
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfTranspositionCorrections];
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
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfInsertKeyCorrections];
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
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfSkipTouchCorrections];
  if ((v7 & 0x4000) == 0)
  {
LABEL_10:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfSubstitutionCorrections];
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfNearKeyCorrections];
  if ((v7 & 0x8000) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v7 & 0x10000) != 0)
  {
LABEL_12:
    [sessionCopy addSample:&unk_28400BF10 forKey:kTISKNumberOfHitTestCorrections];
  }

LABEL_13:
  wordBucketCategory = [(TISKCandidateAcceptEvent *)self wordBucketCategory];

  v5 = sessionCopy;
  if (!wordBucketCategory)
  {
    goto LABEL_37;
  }

  wordBucketCategory2 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
  v10 = [wordBucketCategory2 isEqualToString:@"absolutistWord"];

  if (v10)
  {
    v11 = &kTISKtotalAbsolutistWords;
  }

  else
  {
    wordBucketCategory3 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
    v13 = [wordBucketCategory3 isEqualToString:@"downWord"];

    if (v13)
    {
      v11 = &kTISKtotalDownWords;
    }

    else
    {
      wordBucketCategory4 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
      v15 = [wordBucketCategory4 isEqualToString:@"deathWord"];

      if (v15)
      {
        v11 = &kTISKtotalDeathWords;
      }

      else
      {
        wordBucketCategory5 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
        v17 = [wordBucketCategory5 isEqualToString:@"anxietyWord"];

        if (v17)
        {
          v11 = &kTISKtotalAnxietyWords;
        }

        else
        {
          wordBucketCategory6 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
          v19 = [wordBucketCategory6 isEqualToString:@"angerWord"];

          if (v19)
          {
            v11 = &kTISKtotalAngerWords;
          }

          else
          {
            wordBucketCategory7 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
            v21 = [wordBucketCategory7 isEqualToString:@"healthFeelingWord"];

            if (v21)
            {
              v11 = &kTISKtotalHealthFeelingWords;
            }

            else
            {
              wordBucketCategory8 = [(TISKCandidateAcceptEvent *)self wordBucketCategory];
              v23 = [wordBucketCategory8 isEqualToString:@"positiveWord"];

              v5 = sessionCopy;
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

  v4 = [sessionCopy addSample:&unk_28400BF10 forKey:*v11];
  v5 = sessionCopy;
LABEL_37:

  MEMORY[0x2821F96F8](v4, v5);
}

@end