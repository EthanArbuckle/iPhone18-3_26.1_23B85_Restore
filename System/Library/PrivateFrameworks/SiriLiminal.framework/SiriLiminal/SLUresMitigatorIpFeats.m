@interface SLUresMitigatorIpFeats
- (SLUresMitigatorIpFeats)initWithDefaults;
@end

@implementation SLUresMitigatorIpFeats

- (SLUresMitigatorIpFeats)initWithDefaults
{
  v23.receiver = self;
  v23.super_class = SLUresMitigatorIpFeats;
  v2 = [(SLUresMitigatorIpFeats *)&v23 init];
  v3 = v2;
  if (v2)
  {
    inputOrigin = v2->_inputOrigin;
    v2->_inputOrigin = 0;

    speechPackage = v3->_speechPackage;
    v3->_speechPackage = 0;

    v3->_didDetectSpeechActivity = 0;
    v3->_isAirpodsConnected = 0;
    v3->_timeSinceLastQuery = 0.0;
    v3->_decisionStage = 2;
    prevStageOutput = v3->_prevStageOutput;
    v3->_prevStageOutput = &unk_2878A7730;

    acousticFTMScores = v3->_acousticFTMScores;
    v3->_acousticFTMScores = &unk_2878A7740;

    speakerIDScore = v3->_speakerIDScore;
    v3->_speakerIDScore = &unk_2878A7730;

    boronScore = v3->_boronScore;
    v3->_boronScore = &unk_2878A7740;

    eosLikelihood = v3->_eosLikelihood;
    v3->_eosLikelihood = &unk_2878A7828;

    *&v3->_didDetectVisualActivity = 0;
    v3->_didDetectAttention = 0;
    nldaScore = v3->_nldaScore;
    v3->_nldaScore = &unk_2878A7740;

    nldaMetaInfo = v3->_nldaMetaInfo;
    v3->_nldaMetaInfo = 0;

    lrnnScore = v3->_lrnnScore;
    v3->_lrnnScore = &unk_2878A7740;

    lrnnThreshold = v3->_lrnnThreshold;
    v3->_lrnnThreshold = &unk_2878A7750;

    confidenceScore = v3->_confidenceScore;
    v3->_confidenceScore = &unk_2878A7760;

    checkerScore = v3->_checkerScore;
    v3->_checkerScore = &unk_2878A7730;

    phsScore = v3->_phsScore;
    v3->_phsScore = &unk_2878A7730;

    embeddingScore = v3->_embeddingScore;
    v3->_embeddingScore = &unk_2878A7740;

    externalLrnnScale = v3->_externalLrnnScale;
    v3->_externalLrnnScale = &unk_2878A7730;

    externalLrnnOffset = v3->_externalLrnnOffset;
    v3->_externalLrnnOffset = &unk_2878A7750;

    conversationalNldaScore = v3->_conversationalNldaScore;
    v3->_conversationalNldaScore = &unk_2878A7740;

    v3->_isConversational = 0;
  }

  return v3;
}

@end