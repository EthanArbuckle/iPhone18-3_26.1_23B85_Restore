@interface VMVoicemailTranscriptSegment
- (VMVoicemailTranscriptSegment)init;
- (VMVoicemailTranscriptSegment)initWithCoder:(id)a3;
- (VMVoicemailTranscriptSegment)initWithTranscriptionSegment:(id)a3 confidenceThreshold:(float)a4;
- (_NSRange)substringRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation VMVoicemailTranscriptSegment

- (VMVoicemailTranscriptSegment)init
{
  [(VMVoicemailTranscriptSegment *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMVoicemailTranscriptSegment)initWithTranscriptionSegment:(id)a3 confidenceThreshold:(float)a4
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = VMVoicemailTranscriptSegment;
  v7 = [(VMVoicemailTranscriptSegment *)&v16 init];
  if (v7)
  {
    [v6 confidence];
    v7->_confidence = v8;
    v9 = 3;
    if (v8 < a4)
    {
      v9 = 1;
    }

    if (v8 == 0.0)
    {
      v9 = 0;
    }

    v7->_confidenceRating = v9;
    [v6 duration];
    v7->_duration = v10;
    v11 = [v6 substring];
    substring = v7->_substring;
    v7->_substring = v11;

    v7->_substringRange.location = [v6 substringRange];
    v7->_substringRange.length = v13;
    [v6 timestamp];
    v7->_timestamp = v14;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(VMVoicemailTranscriptSegment *)self confidence];
  *(v5 + 8) = v6;
  *(v5 + 40) = [(VMVoicemailTranscriptSegment *)self confidenceRating];
  [(VMVoicemailTranscriptSegment *)self duration];
  *(v5 + 24) = v7;
  v8 = [(VMVoicemailTranscriptSegment *)self substring];
  v9 = [v8 copyWithZone:a3];
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  *(v5 + 48) = [(VMVoicemailTranscriptSegment *)self substringRange];
  *(v5 + 56) = v11;
  [(VMVoicemailTranscriptSegment *)self timestamp];
  *(v5 + 32) = v12;
  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CBEAA8];
  [(VMVoicemailTranscriptSegment *)self timestamp];
  v4 = [v3 dateWithTimeIntervalSince1970:?];
  v5 = MEMORY[0x277CCAE60];
  v6 = [(VMVoicemailTranscriptSegment *)self substringRange];
  v8 = [v5 valueWithRange:{v6, v7}];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = MEMORY[0x277CCABB0];
  [(VMVoicemailTranscriptSegment *)self confidence];
  v12 = [v11 numberWithFloat:?];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[VMVoicemailTranscriptSegment confidenceRating](self, "confidenceRating")}];
  v14 = MEMORY[0x277CCABB0];
  [(VMVoicemailTranscriptSegment *)self duration];
  v15 = [v14 numberWithDouble:?];
  v16 = [(VMVoicemailTranscriptSegment *)self substring];
  v17 = [v9 stringWithFormat:@"<%@ %p timestampDate=%@, confidence=%@, confidenceRating=%@, duration=%@, substring=%@, substringRange=%@>", v10, self, v4, v12, v13, v15, v16, v8];

  return v17;
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

  duration = self->_duration;
  v11 = NSStringFromSelector(sel_duration);
  [v5 encodeDouble:v11 forKey:duration];

  substring = self->_substring;
  v13 = NSStringFromSelector(sel_substring);
  [v5 encodeObject:substring forKey:v13];

  v14 = [MEMORY[0x277CCAE60] valueWithRange:{self->_substringRange.location, self->_substringRange.length}];
  v15 = NSStringFromSelector(sel_substringRange);
  [v5 encodeObject:v14 forKey:v15];

  timestamp = self->_timestamp;
  v17 = NSStringFromSelector(sel_timestamp);
  [v5 encodeDouble:v17 forKey:timestamp];
}

- (VMVoicemailTranscriptSegment)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = VMVoicemailTranscriptSegment;
  v5 = [(VMVoicemailTranscriptSegment *)&v22 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_confidence);
    [v4 decodeFloatForKey:v6];
    v5->_confidence = v7;

    v8 = NSStringFromSelector(sel_confidenceRating);
    v5->_confidenceRating = [v4 decodeIntegerForKey:v8];

    v9 = NSStringFromSelector(sel_duration);
    [v4 decodeDoubleForKey:v9];
    v5->_duration = v10;

    v11 = NSStringFromSelector(sel_timestamp);
    [v4 decodeDoubleForKey:v11];
    v5->_timestamp = v12;

    v13 = objc_opt_class();
    v14 = NSStringFromSelector(sel_substring);
    v15 = [v4 decodeObjectOfClass:v13 forKey:v14];
    substring = v5->_substring;
    v5->_substring = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_substringRange);
    v19 = [v4 decodeObjectOfClass:v17 forKey:v18];
    v5->_substringRange.location = [v19 rangeValue];
    v5->_substringRange.length = v20;
  }

  return v5;
}

- (_NSRange)substringRange
{
  length = self->_substringRange.length;
  location = self->_substringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2721BA000, a2, OS_LOG_TYPE_ERROR, "Decoding duration as a double failed due to the following exception: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithCoder:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_2721BA000, a2, OS_LOG_TYPE_ERROR, "Decoding timestamp as a double failed due to the following exception: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end