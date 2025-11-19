@interface CSDPauseDigitsQueue
- (BOOL)hasQueuedHardPauseDigits;
- (CSDPauseDigits)nextPauseDigits;
- (CSDPauseDigitsQueue)init;
- (CSDPauseDigitsQueue)initWithDestinationID:(id)a3;
- (CSDPauseDigitsQueueDelegate)delegate;
- (id)dequeueAllPauseDigits;
- (id)dequeueNextPauseDigits;
- (id)description;
- (void)_parsePauseDigitsFromDestinationID:(id)a3;
@end

@implementation CSDPauseDigitsQueue

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CSDPauseDigitsQueue *)self baseDestinationID];
  [v3 appendFormat:@" baseDestinationID=%@", v4];

  v5 = [(CSDPauseDigitsQueue *)self originalPauseDigitsString];
  [v3 appendFormat:@" originalPauseDigitsString=%@", v5];

  v6 = [(CSDPauseDigitsQueue *)self pauseDigits];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(CSDPauseDigitsQueue *)self pauseDigits];
    [v3 appendFormat:@" pauseDigits=%@", v8];
  }

  [v3 appendString:@">"];

  return v3;
}

- (CSDPauseDigits)nextPauseDigits
{
  v2 = [(CSDPauseDigitsQueue *)self pauseDigits];
  v3 = [v2 firstObject];

  return v3;
}

- (BOOL)hasQueuedHardPauseDigits
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [(CSDPauseDigitsQueue *)self pauseDigits];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) isHardPause])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (CSDPauseDigitsQueue)init
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSDPauseDigitsQueue.m" lineNumber:23 description:{@"%s is not available. Use a designated initializer instead.", "-[CSDPauseDigitsQueue init]"}];

  return 0;
}

- (CSDPauseDigitsQueue)initWithDestinationID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CSDPauseDigitsQueue;
  v5 = [(CSDPauseDigitsQueue *)&v9 init];
  if (v5)
  {
    v6 = +[NSMutableArray array];
    pauseDigits = v5->_pauseDigits;
    v5->_pauseDigits = v6;

    [(CSDPauseDigitsQueue *)v5 _parsePauseDigitsFromDestinationID:v4];
  }

  return v5;
}

- (id)dequeueNextPauseDigits
{
  v3 = [(CSDPauseDigitsQueue *)self nextPauseDigits];
  if (v3)
  {
    v4 = [(CSDPauseDigitsQueue *)self pauseDigits];
    [v4 removeObjectAtIndex:0];

    v5 = [(CSDPauseDigitsQueue *)self delegate];
    [v5 pauseDigitsQueueChanged:self];
  }

  return v3;
}

- (id)dequeueAllPauseDigits
{
  v3 = [(CSDPauseDigitsQueue *)self pauseDigits];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(CSDPauseDigitsQueue *)self pauseDigits];
    v6 = [v5 copy];

    v7 = [(CSDPauseDigitsQueue *)self pauseDigits];
    [v7 removeAllObjects];

    v8 = [(CSDPauseDigitsQueue *)self delegate];
    [v8 pauseDigitsQueueChanged:self];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)_parsePauseDigitsFromDestinationID:(id)a3
{
  v20 = a3;
  if (qword_1006ACD00 != -1)
  {
    sub_1004758A4();
  }

  v4 = [v20 length];
  v5 = [v20 rangeOfCharacterFromSet:qword_1006ACCF8 options:4 range:{0, v4}];
  if (v6)
  {
    v7 = v5 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5;
    v9 = v6;
    do
    {
      v10 = v8 + 1;
      v11 = [v20 substringWithRange:{v8, v9}];
      v12 = [v11 characterAtIndex:0];

      v13 = [v20 substringWithRange:{v10, v4 - v10}];
      v14 = [qword_1006ACCF0 characterIsMember:v12];
      if ([v13 length] || (v14 & 1) == 0)
      {
        v15 = [[CSDPauseDigits alloc] initWithDigits:v13 isHardPause:v14];
        v16 = [(CSDPauseDigitsQueue *)self pauseDigits];
        [v16 insertObject:v15 atIndex:0];
      }

      v4 += ~[v13 length];
      v8 = [v20 rangeOfCharacterFromSet:qword_1006ACCF8 options:4 range:{0, v4}];
      v9 = v17;
    }

    while (v9 && v8 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v18 = [v20 substringWithRange:{0, v4}];
  [(CSDPauseDigitsQueue *)self setBaseDestinationID:v18];

  v19 = [v20 substringFromIndex:v4];
  [(CSDPauseDigitsQueue *)self setOriginalPauseDigitsString:v19];
}

- (CSDPauseDigitsQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end