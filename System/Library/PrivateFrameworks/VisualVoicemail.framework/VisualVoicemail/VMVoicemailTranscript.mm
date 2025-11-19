@interface VMVoicemailTranscript
- (VMVoicemailTranscript)init;
- (VMVoicemailTranscript)initWithCoder:(id)a3;
- (VMVoicemailTranscript)initWithTranscriberResult:(id)a3;
- (VMVoicemailTranscript)initWithTranscription:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMVoicemailTranscript

- (VMVoicemailTranscript)init
{
  v7.receiver = self;
  v7.super_class = VMVoicemailTranscript;
  v2 = [(VMVoicemailTranscript *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_confidence = 0.0;
    v2->_confidenceRating = 0;
    transcriptionString = v2->_transcriptionString;
    v2->_transcriptionString = &stru_2881762E0;

    segments = v3->_segments;
    v3->_segments = MEMORY[0x277CBEBF8];
  }

  return v3;
}

- (VMVoicemailTranscript)initWithTranscription:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v38.receiver = self;
  v38.super_class = VMVoicemailTranscript;
  v5 = [(VMVoicemailTranscript *)&v38 init];
  v6 = v5;
  if (v5)
  {
    v5->_confidence = 0.0;
    v5->_confidenceRating = 0;
    v7 = [v4 formattedString];
    transcriptionString = v6->_transcriptionString;
    v6->_transcriptionString = v7;

    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v10 = [v4 segments];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

    +[VMConfiguration confidenceSegmentThreshold];
    v13 = v12;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = [v4 segments];
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      v18 = 0.0;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v34 + 1) + 8 * i);
          v21 = [VMVoicemailTranscriptSegment alloc];
          LODWORD(v22) = v13;
          v23 = [(VMVoicemailTranscriptSegment *)v21 initWithTranscriptionSegment:v20 confidenceThreshold:v22];
          [(VMVoicemailTranscriptSegment *)v23 confidence];
          v18 = v18 + v24;
          [v11 addObject:v23];
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v16);
    }

    else
    {
      v18 = 0.0;
    }

    v25 = [v11 copy];
    segments = v6->_segments;
    v6->_segments = v25;

    if (v18 == 0.0)
    {
      confidence = v6->_confidence;
    }

    else
    {
      confidence = v18 / [(NSArray *)v6->_segments count];
      v6->_confidence = confidence;
    }

    if (confidence == 0.0)
    {
      v28 = 0;
    }

    else
    {
      +[VMConfiguration confidenceLowQualityThreshold];
      if (confidence >= v29)
      {
        v28 = 3;
      }

      else
      {
        v30 = v6->_confidence;
        +[VMConfiguration confidenceThreshold];
        v28 = 2;
        if (v30 < v31)
        {
          v28 = 1;
        }
      }
    }

    v6->_confidenceRating = v28;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v6;
}

- (VMVoicemailTranscript)initWithTranscriberResult:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = VMVoicemailTranscript;
  v5 = [(VMVoicemailTranscript *)&v34 init];
  v6 = v5;
  if (v5)
  {
    v5->_confidence = 0.0;
    v5->_confidenceRating = 0;
    v7 = [v4 contextualizedTranscriberMultisegmentResult];
    v8 = [v7 transcriptions];
    v9 = [v8 firstObject];

    v10 = [MEMORY[0x277CCAB68] string];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v16 text];
          [v10 appendString:v17];

          [v16 confidence];
          *&v18 = v18 + v6->_confidence;
          v6->_confidence = *&v18;
        }

        v13 = [v11 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v13);
    }

    confidence = v6->_confidence;
    if (confidence != 0.0)
    {
      confidence = confidence / [v11 count];
    }

    v6->_confidence = confidence;
    objc_storeStrong(&v6->_transcriptionString, v10);
    v20 = vm_framework_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      transcriptionString = v6->_transcriptionString;
      v22 = v6->_confidence;
      *buf = 138412546;
      v36 = transcriptionString;
      v37 = 2048;
      v38 = v22;
      _os_log_impl(&dword_2721BA000, v20, OS_LOG_TYPE_DEFAULT, "Segment dictation result:%@ , confidence = %f", buf, 0x16u);
    }

    v23 = v6->_confidence;
    if (v23 == 0.0)
    {
      v24 = 0;
    }

    else
    {
      +[VMConfiguration confidenceLowQualityThreshold];
      if (v23 >= v25)
      {
        v24 = 3;
      }

      else
      {
        v26 = v6->_confidence;
        +[VMConfiguration confidenceThreshold];
        v24 = 2;
        if (v26 < v27)
        {
          v24 = 1;
        }
      }
    }

    v6->_confidenceRating = v24;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(VMVoicemailTranscript *)self confidence];
  *(v5 + 8) = v6;
  *(v5 + 32) = [(VMVoicemailTranscript *)self confidenceRating];
  v7 = [(VMVoicemailTranscript *)self segments];
  v8 = [v7 copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(VMVoicemailTranscript *)self transcriptionString];
  v11 = [v10 copyWithZone:a3];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  confidence = self->_confidence;
  v5 = a3;
  v6 = NSStringFromSelector(sel_confidence);
  *&v7 = confidence;
  [v5 encodeFloat:v6 forKey:v7];

  confidenceRating = self->_confidenceRating;
  v9 = NSStringFromSelector(sel_confidenceRating);
  [v5 encodeInteger:confidenceRating forKey:v9];

  segments = self->_segments;
  v11 = NSStringFromSelector(sel_segments);
  [v5 encodeObject:segments forKey:v11];

  transcriptionString = self->_transcriptionString;
  v13 = NSStringFromSelector(sel_transcriptionString);
  [v5 encodeObject:transcriptionString forKey:v13];
}

- (VMVoicemailTranscript)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = VMVoicemailTranscript;
  v5 = [(VMVoicemailTranscript *)&v20 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_confidence);
    [v4 decodeFloatForKey:v6];
    v5->_confidence = v7;

    v8 = NSStringFromSelector(sel_confidenceRating);
    v5->_confidenceRating = [v4 decodeIntegerForKey:v8];

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = NSStringFromSelector(sel_segments);
    v13 = [v4 decodeObjectOfClasses:v11 forKey:v12];
    segments = v5->_segments;
    v5->_segments = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_transcriptionString);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    transcriptionString = v5->_transcriptionString;
    v5->_transcriptionString = v17;
  }

  return v5;
}

- (id)debugDescription
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"=====================================================\n"];
  v4 = [(VMVoicemailTranscript *)self transcriptionString];
  [v3 appendFormat:@"%@\n", v4];

  [v3 appendFormat:@"=====================================================\n"];
  [v3 appendString:@"Comprised of:\n"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(VMVoicemailTranscript *)self segments];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * i) debugDescription];
        [v3 appendFormat:@"%@\n", v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [(VMVoicemailTranscript *)self confidence];
  [v3 appendFormat:@"With an overall confidence of %f (rating:%lu)", v11, -[VMVoicemailTranscript confidenceRating](self, "confidenceRating")];
  v12 = [v3 copy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end