@interface NSSingleCompletionCheckingResult
- (NSSingleCompletionCheckingResult)initWithCoder:(id)a3;
- (NSSingleCompletionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4 completeWordIndexes:(id)a5 isPromoted:(BOOL)a6;
- (NSSingleCompletionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4 stopCompletingIndex:(unint64_t)a5;
- (id)description;
- (id)resultByAdjustingRangesWithOffset:(int64_t)a3;
- (unint64_t)stopCompletingIndex;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSSingleCompletionCheckingResult

- (NSSingleCompletionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4 completeWordIndexes:(id)a5 isPromoted:(BOOL)a6
{
  v10.receiver = self;
  v10.super_class = NSSingleCompletionCheckingResult;
  v8 = [(NSSubstitutionCheckingResult *)&v10 initWithRange:a3.location replacementString:a3.length, a4];
  if (v8)
  {
    v8->_completeWordIndexes = [a5 copy];
    v8->_isPromoted = a6;
  }

  return v8;
}

- (NSSingleCompletionCheckingResult)initWithRange:(_NSRange)a3 replacementString:(id)a4 stopCompletingIndex:(unint64_t)a5
{
  length = a3.length;
  location = a3.location;
  if (a5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:a5];
  }

  return [(NSSingleCompletionCheckingResult *)self initWithRange:location replacementString:length completeWordIndexes:a4, v9];
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
    v3 = [(NSSingleCompletionCheckingResult *)self completeWordIndexes];

    return [(NSIndexSet *)v3 firstIndex];
  }

  else
  {
    v5 = [(NSSubstitutionCheckingResult *)self replacementString];

    return [v5 length];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = NSSingleCompletionCheckingResult;
  v4 = [(NSSubstitutionCheckingResult *)&v9 description];
  v5 = [(NSSingleCompletionCheckingResult *)self stopCompletingIndex];
  v6 = [(NSSingleCompletionCheckingResult *)self isPromoted];
  v7 = &stru_1F4E0A7A0;
  if (v6)
  {
    v7 = @"+";
  }

  return [v3 stringWithFormat:@"%@/%u%@", v4, v5, v7];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NSSingleCompletionCheckingResult;
  [(NSSubstitutionCheckingResult *)&v5 encodeWithCoder:?];
  if ([a3 allowsKeyedCoding])
  {
    [a3 encodeObject:-[NSSingleCompletionCheckingResult completeWordIndexes](self forKey:{"completeWordIndexes"), @"NSCompleteWordIndexes"}];
    [a3 encodeInteger:-[NSSingleCompletionCheckingResult stopCompletingIndex](self forKey:{"stopCompletingIndex"), @"NSStopCompletingIndex"}];
    [a3 encodeObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[NSSingleCompletionCheckingResult isPromoted](self, "isPromoted")), @"NSIsPromoted"}];
  }
}

- (NSSingleCompletionCheckingResult)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = NSSingleCompletionCheckingResult;
  v4 = [(NSSubstitutionCheckingResult *)&v10 initWithCoder:?];
  if (v4)
  {
    if ([a3 allowsKeyedCoding])
    {
      v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSCompleteWordIndexes"];
      if (!v5)
      {
        v9 = [a3 decodeIntegerForKey:@"NSStopCompletingIndex"];
        if (v9)
        {
          if (v9 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v5 = [MEMORY[0x1E696AC90] indexSetWithIndex:v9];
          }
        }
      }

      v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"NSIsPromoted"];
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v4->_completeWordIndexes = [v5 copy];
    if (v6)
    {
      v7 = [v6 BOOLValue];
    }

    else
    {
      v7 = 0;
    }

    v4->_isPromoted = v7;
  }

  return v4;
}

- (id)resultByAdjustingRangesWithOffset:(int64_t)a3
{
  v5.location = [(NSSubstitutionCheckingResult *)self range];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (a3 < 0 && v5.location < -a3)
    {
      v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%ld invalid offset for range %@", a3, NSStringFromRange(v5)), 0}];
      objc_exception_throw(v9);
    }

    v6 = v5.location + a3;
  }

  v7 = [objc_alloc(objc_opt_class()) initWithRange:v6 replacementString:v5.length completeWordIndexes:-[NSSubstitutionCheckingResult replacementString](self isPromoted:{"replacementString"), -[NSSingleCompletionCheckingResult completeWordIndexes](self, "completeWordIndexes"), -[NSSingleCompletionCheckingResult isPromoted](self, "isPromoted")}];

  return v7;
}

@end