@interface SOSVoiceUtterer
- (AVSpeechSynthesizer)voiceSynthesizer;
- (NSString)description;
- (SOSVoiceUttererDelegate)delegate;
- (id)routeDescription;
- (void)_forgetUtterancesBeingSpoken;
- (void)_speakAVUtterance:(id)utterance;
- (void)_speakUtteranceAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)speakUtterances:(id)utterances;
- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance;
- (void)stopSpeaking;
@end

@implementation SOSVoiceUtterer

- (void)dealloc
{
  [(SOSVoiceUtterer *)self stopSpeaking];
  [(AVSpeechSynthesizer *)self->_voiceSynthesizer setDelegate:0];
  v3.receiver = self;
  v3.super_class = SOSVoiceUtterer;
  [(SOSVoiceUtterer *)&v3 dealloc];
}

- (void)speakUtterances:(id)utterances
{
  v26 = *MEMORY[0x277D85DE8];
  utterancesCopy = utterances;
  v6 = sos_voice_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    routeDescription = [(SOSVoiceUtterer *)self routeDescription];
    *buf = 138543618;
    v23 = routeDescription;
    v24 = 2112;
    v25 = utterancesCopy;
    _os_log_impl(&dword_264323000, v6, OS_LOG_TYPE_DEFAULT, "Speaking utterances to %{public}@: %@", buf, 0x16u);
  }

  [(SOSVoiceUtterer *)self stopSpeaking];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(utterancesCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = utterancesCopy;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        avSpeechUtterance = [*(*(&v17 + 1) + 8 * v13) avSpeechUtterance];
        if (avSpeechUtterance)
        {
          [v8 addObject:avSpeechUtterance];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if (v8)
  {
    objc_storeStrong(&self->_sosUtterancesBeingSpoken, utterances);
    objc_storeStrong(&self->_avUtterancesBeingSpoken, v8);
    [(SOSVoiceUtterer *)self _speakUtteranceAtIndex:0];
  }

  else
  {
    v15 = sos_voice_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SOSVoiceUtterer *)v9 speakUtterances:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)stopSpeaking
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sos_voice_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    routeDescription = [(SOSVoiceUtterer *)self routeDescription];
    v6 = 138543362;
    v7 = routeDescription;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "Stopping speaking utterances to %{public}@...", &v6, 0xCu);
  }

  [(SOSVoiceUtterer *)self _forgetUtterancesBeingSpoken];
  [(AVSpeechSynthesizer *)self->_voiceSynthesizer stopSpeakingAtBoundary:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_forgetUtterancesBeingSpoken
{
  sosUtterancesBeingSpoken = self->_sosUtterancesBeingSpoken;
  self->_sosUtterancesBeingSpoken = 0;

  avUtterancesBeingSpoken = self->_avUtterancesBeingSpoken;
  self->_avUtterancesBeingSpoken = 0;
}

- (AVSpeechSynthesizer)voiceSynthesizer
{
  voiceSynthesizer = self->_voiceSynthesizer;
  if (!voiceSynthesizer)
  {
    v4 = objc_alloc_init(MEMORY[0x277CB84B8]);
    v5 = self->_voiceSynthesizer;
    self->_voiceSynthesizer = v4;

    [(AVSpeechSynthesizer *)self->_voiceSynthesizer setDelegate:self];
    [(AVSpeechSynthesizer *)self->_voiceSynthesizer setUsesApplicationAudioSession:0];
    [(AVSpeechSynthesizer *)self->_voiceSynthesizer setMixToTelephonyUplink:[(SOSVoiceUtterer *)self mixToTelephonyUplink]];
    voiceSynthesizer = self->_voiceSynthesizer;
  }

  return voiceSynthesizer;
}

- (void)_speakAVUtterance:(id)utterance
{
  v13 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  v5 = sos_voice_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    routeDescription = [(SOSVoiceUtterer *)self routeDescription];
    v9 = 138543618;
    v10 = routeDescription;
    v11 = 2112;
    v12 = utteranceCopy;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "Speaking avUtterance in %{public}@ audio: %@", &v9, 0x16u);
  }

  voiceSynthesizer = [(SOSVoiceUtterer *)self voiceSynthesizer];
  [voiceSynthesizer speakUtterance:utteranceCopy];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_speakUtteranceAtIndex:(unint64_t)index
{
  v18 = *MEMORY[0x277D85DE8];
  p_avUtterancesBeingSpoken = &self->_avUtterancesBeingSpoken;
  v6 = [(NSArray *)self->_avUtterancesBeingSpoken count];
  v7 = sos_voice_log();
  v8 = v7;
  if (v6 <= index)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(SOSVoiceUtterer *)p_avUtterancesBeingSpoken _speakUtteranceAtIndex:index, v8];
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSArray *)*p_avUtterancesBeingSpoken count];
      v14 = 134218240;
      indexCopy = index;
      v16 = 2048;
      v17 = v9;
      _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "_speakUtteranceAtIndex:%tu / %tu", &v14, 0x16u);
    }

    delegate = [(SOSVoiceUtterer *)self delegate];

    if (delegate)
    {
      delegate2 = [(SOSVoiceUtterer *)self delegate];
      sosUtterancesBeingSpoken = [(SOSVoiceUtterer *)self sosUtterancesBeingSpoken];
      [delegate2 voiceUtterer:self willStartSpeakingUtteranceAtIndex:index fromUtterances:sosUtterancesBeingSpoken];
    }

    v8 = [(NSArray *)self->_avUtterancesBeingSpoken objectAtIndexedSubscript:index];
    [(SOSVoiceUtterer *)self _speakAVUtterance:v8];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)routeDescription
{
  if ([(SOSVoiceUtterer *)self mixToTelephonyUplink])
  {
    v2 = @"[call uplink]";
  }

  else
  {
    v2 = @"[local speaker]";
  }

  return v2;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  routeDescription = [(SOSVoiceUtterer *)self routeDescription];
  v6 = [v3 stringWithFormat:@"<%@ %p route=%@ _voiceSynthesizer=%@", v4, self, routeDescription, self->_voiceSynthesizer];

  return v6;
}

- (void)speechSynthesizer:(id)synthesizer didFinishSpeechUtterance:(id)utterance
{
  v25 = *MEMORY[0x277D85DE8];
  utteranceCopy = utterance;
  v6 = [(NSArray *)self->_avUtterancesBeingSpoken indexOfObject:utteranceCopy];
  v7 = sos_voice_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    avUtterancesBeingSpoken = self->_avUtterancesBeingSpoken;
    v19 = 138412802;
    selfCopy4 = utteranceCopy;
    v21 = 2112;
    v22 = avUtterancesBeingSpoken;
    v23 = 2114;
    selfCopy5 = self;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_INFO, "didFinishSpeechUtterance, utterance:%@, _avUtterancesBeingSpoken:%@ [%{public}@]", &v19, 0x20u);
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    sosUtterancesBeingSpoken = sos_voice_log();
    if (os_log_type_enabled(sosUtterancesBeingSpoken, OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_avUtterancesBeingSpoken;
      v19 = 138412802;
      selfCopy4 = utteranceCopy;
      v21 = 2112;
      v22 = v10;
      v23 = 2114;
      selfCopy5 = self;
      _os_log_impl(&dword_264323000, sosUtterancesBeingSpoken, OS_LOG_TYPE_DEFAULT, "didFinishSpeechUtterance, utteranceIndex not found => NOP; utterance:%@, _avUtterancesBeingSpoken:%@ [%{public}@]", &v19, 0x20u);
    }

LABEL_17:

    goto LABEL_18;
  }

  v11 = [(NSArray *)self->_avUtterancesBeingSpoken count];
  v12 = sos_voice_log();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v6 + 1 >= v11)
  {
    if (v13)
    {
      v19 = 138543362;
      selfCopy4 = self;
      _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "didFinishSpeechUtterance called, completed utterances [%{public}@]", &v19, 0xCu);
    }

    sosUtterancesBeingSpoken = [(SOSVoiceUtterer *)self sosUtterancesBeingSpoken];
    [(SOSVoiceUtterer *)self _forgetUtterancesBeingSpoken];
    delegate = [(SOSVoiceUtterer *)self delegate];

    if (delegate)
    {
      v16 = sos_voice_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138543362;
        selfCopy4 = self;
        _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "didFinishSpeechUtterance called, completed utterances; notifying delegate [%{public}@]", &v19, 0xCu);
      }

      delegate2 = [(SOSVoiceUtterer *)self delegate];
      [delegate2 voiceUtterer:self didFinishSpeakingUtterances:sosUtterancesBeingSpoken];
    }

    goto LABEL_17;
  }

  if (v13)
  {
    v14 = [(NSArray *)self->_avUtterancesBeingSpoken count];
    v19 = 134218498;
    selfCopy4 = v6;
    v21 = 2048;
    v22 = v14;
    v23 = 2114;
    selfCopy5 = self;
    _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "didFinishSpeechUtterance, _avUtterancesBeingSpoken index: %lu out of: %lu [%{public}@]", &v19, 0x20u);
  }

  if (self->_voiceSynthesizer)
  {
    [(SOSVoiceUtterer *)self _speakUtteranceAtIndex:v6 + 1];
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
}

- (SOSVoiceUttererDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)speakUtterances:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "No avUtterancesToSpeak; speakUtterances: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_speakUtteranceAtIndex:(NSObject *)a3 .cold.1(id *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*a1 count];
  v7 = 134218240;
  v8 = a2;
  v9 = 2048;
  v10 = v5;
  _os_log_error_impl(&dword_264323000, a3, OS_LOG_TYPE_ERROR, "_speakUtteranceAtIndex asked to use out of range index:%tu of %tu", &v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

@end