@interface NSSingleCompletionCheckingResult
- (NSSingleCompletionCheckingResult)initWithCoder:(id)coder;
- (NSSingleCompletionCheckingResult)initWithRange:(_NSRange)range replacementString:(id)string completeWordIndexes:(id)indexes isPromoted:(BOOL)promoted;
- (NSSingleCompletionCheckingResult)initWithRange:(_NSRange)range replacementString:(id)string stopCompletingIndex:(unint64_t)index;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)offset;
- (unint64_t)stopCompletingIndex;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSingleCompletionCheckingResult

- (NSSingleCompletionCheckingResult)initWithRange:(_NSRange)range replacementString:(id)string completeWordIndexes:(id)indexes isPromoted:(BOOL)promoted
{
  v10.receiver = self;
  v10.super_class = NSSingleCompletionCheckingResult;
  string = [(NSSubstitutionCheckingResult *)&v10 initWithRange:range.location replacementString:range.length, string];
  if (string)
  {
    string->_completeWordIndexes = [indexes copy];
    string->_isPromoted = promoted;
  }

  return string;
}

- (NSSingleCompletionCheckingResult)initWithRange:(_NSRange)range replacementString:(id)string stopCompletingIndex:(unint64_t)index
{
  length = range.length;
  location = range.location;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:index];
  }

  return [(NSSingleCompletionCheckingResult *)self initWithRange:location replacementString:length completeWordIndexes:string, v9];
}

- (void)dealloc
{
  completeWordIndexes = self->_completeWordIndexes;
  if (completeWordIndexes)
  {

    self->_completeWordIndexes = 0;
  }

  v4.receiver = self;
  v4.super_class = NSSingleCompletionCheckingResult;
  [(NSSubstitutionCheckingResult *)&v4 dealloc];
}

- (unint64_t)stopCompletingIndex
{
  if ([(NSSingleCompletionCheckingResult *)self completeWordIndexes])
  {
    completeWordIndexes = [(NSSingleCompletionCheckingResult *)self completeWordIndexes];

    return [(NSIndexSet *)completeWordIndexes firstIndex];
  }

  else
  {
    replacementString = [(NSSubstitutionCheckingResult *)self replacementString];

    return [replacementString length];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = NSSingleCompletionCheckingResult;
  v4 = [(NSSubstitutionCheckingResult *)&v9 description];
  stopCompletingIndex = [(NSSingleCompletionCheckingResult *)self stopCompletingIndex];
  isPromoted = [(NSSingleCompletionCheckingResult *)self isPromoted];
  v7 = &stru_1F4E0A7A0;
  if (isPromoted)
  {
    v7 = @"+";
  }

  return [v3 stringWithFormat:@"%@/%u%@", v4, stopCompletingIndex, v7];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NSSingleCompletionCheckingResult;
  [(NSSubstitutionCheckingResult *)&v5 encodeWithCoder:?];
  if ([coder allowsKeyedCoding])
  {
    [coder encodeObject:-[NSSingleCompletionCheckingResult completeWordIndexes](self forKey:{"completeWordIndexes"), @"NSCompleteWordIndexes"}];
    [coder encodeInteger:-[NSSingleCompletionCheckingResult stopCompletingIndex](self forKey:{"stopCompletingIndex"), @"NSStopCompletingIndex"}];
    [coder encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[NSSingleCompletionCheckingResult isPromoted](self, "isPromoted")), @"NSIsPromoted"}];
  }
}

- (NSSingleCompletionCheckingResult)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = NSSingleCompletionCheckingResult;
  v4 = [(NSSubstitutionCheckingResult *)&v10 initWithCoder:?];
  if (v4)
  {
    if ([coder allowsKeyedCoding])
    {
      v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSCompleteWordIndexes"];
      if (!v5)
      {
        v9 = [coder decodeIntegerForKey:@"NSStopCompletingIndex"];
        if (v9)
        {
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:v9];
          }
        }
      }

      v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NSIsPromoted"];
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v4->_completeWordIndexes = [v5 copy];
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v4->_isPromoted = bOOLValue;
  }

  return v4;
}

- (id)resultByAdjustingRangesWithOffset:(int64_t)offset
{
  v5.location = [(NSSubstitutionCheckingResult *)self range];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (offset < 0 && v5.location < -offset)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%ld invalid offset for range %@", offset, NSStringFromRange(v5)), 0}];
      objc_exception_throw(v9);
    }

    v6 = v5.location + offset;
  }

  v7 = [objc_alloc(objc_opt_class()) initWithRange:v6 replacementString:v5.length completeWordIndexes:-[NSSubstitutionCheckingResult replacementString](self isPromoted:{"replacementString"), -[NSSingleCompletionCheckingResult completeWordIndexes](self, "completeWordIndexes"), -[NSSingleCompletionCheckingResult isPromoted](self, "isPromoted")}];

  return v7;
}

@end