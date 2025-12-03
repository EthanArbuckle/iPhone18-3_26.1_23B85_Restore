@interface CSDPauseDigitsQueue
- (BOOL)hasQueuedHardPauseDigits;
- (CSDPauseDigits)nextPauseDigits;
- (CSDPauseDigitsQueue)init;
- (CSDPauseDigitsQueue)initWithDestinationID:(id)d;
- (CSDPauseDigitsQueueDelegate)delegate;
- (id)dequeueAllPauseDigits;
- (id)dequeueNextPauseDigits;
- (id)description;
- (void)_parsePauseDigitsFromDestinationID:(id)d;
@end

@implementation CSDPauseDigitsQueue

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  baseDestinationID = [(CSDPauseDigitsQueue *)self baseDestinationID];
  [v3 appendFormat:@" baseDestinationID=%@", baseDestinationID];

  originalPauseDigitsString = [(CSDPauseDigitsQueue *)self originalPauseDigitsString];
  [v3 appendFormat:@" originalPauseDigitsString=%@", originalPauseDigitsString];

  pauseDigits = [(CSDPauseDigitsQueue *)self pauseDigits];
  v7 = [pauseDigits count];

  if (v7)
  {
    pauseDigits2 = [(CSDPauseDigitsQueue *)self pauseDigits];
    [v3 appendFormat:@" pauseDigits=%@", pauseDigits2];
  }

  [v3 appendString:@">"];

  return v3;
}

- (CSDPauseDigits)nextPauseDigits
{
  pauseDigits = [(CSDPauseDigitsQueue *)self pauseDigits];
  firstObject = [pauseDigits firstObject];

  return firstObject;
}

- (BOOL)hasQueuedHardPauseDigits
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  pauseDigits = [(CSDPauseDigitsQueue *)self pauseDigits];
  v3 = [pauseDigits countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(pauseDigits);
        }

        if ([*(*(&v7 + 1) + 8 * i) isHardPause])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [pauseDigits countByEnumeratingWithState:&v7 objects:v11 count:16];
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

- (CSDPauseDigitsQueue)initWithDestinationID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = CSDPauseDigitsQueue;
  v5 = [(CSDPauseDigitsQueue *)&v9 init];
  if (v5)
  {
    v6 = +[NSMutableArray array];
    pauseDigits = v5->_pauseDigits;
    v5->_pauseDigits = v6;

    [(CSDPauseDigitsQueue *)v5 _parsePauseDigitsFromDestinationID:dCopy];
  }

  return v5;
}

- (id)dequeueNextPauseDigits
{
  nextPauseDigits = [(CSDPauseDigitsQueue *)self nextPauseDigits];
  if (nextPauseDigits)
  {
    pauseDigits = [(CSDPauseDigitsQueue *)self pauseDigits];
    [pauseDigits removeObjectAtIndex:0];

    delegate = [(CSDPauseDigitsQueue *)self delegate];
    [delegate pauseDigitsQueueChanged:self];
  }

  return nextPauseDigits;
}

- (id)dequeueAllPauseDigits
{
  pauseDigits = [(CSDPauseDigitsQueue *)self pauseDigits];
  v4 = [pauseDigits count];

  if (v4)
  {
    pauseDigits2 = [(CSDPauseDigitsQueue *)self pauseDigits];
    v6 = [pauseDigits2 copy];

    pauseDigits3 = [(CSDPauseDigitsQueue *)self pauseDigits];
    [pauseDigits3 removeAllObjects];

    delegate = [(CSDPauseDigitsQueue *)self delegate];
    [delegate pauseDigitsQueueChanged:self];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (void)_parsePauseDigitsFromDestinationID:(id)d
{
  dCopy = d;
  if (qword_1006ACD00 != -1)
  {
    sub_1004758A4();
  }

  v4 = [dCopy length];
  v5 = [dCopy rangeOfCharacterFromSet:qword_1006ACCF8 options:4 range:{0, v4}];
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
      v11 = [dCopy substringWithRange:{v8, v9}];
      v12 = [v11 characterAtIndex:0];

      v13 = [dCopy substringWithRange:{v10, v4 - v10}];
      v14 = [qword_1006ACCF0 characterIsMember:v12];
      if ([v13 length] || (v14 & 1) == 0)
      {
        v15 = [[CSDPauseDigits alloc] initWithDigits:v13 isHardPause:v14];
        pauseDigits = [(CSDPauseDigitsQueue *)self pauseDigits];
        [pauseDigits insertObject:v15 atIndex:0];
      }

      v4 += ~[v13 length];
      v8 = [dCopy rangeOfCharacterFromSet:qword_1006ACCF8 options:4 range:{0, v4}];
      v9 = v17;
    }

    while (v9 && v8 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v18 = [dCopy substringWithRange:{0, v4}];
  [(CSDPauseDigitsQueue *)self setBaseDestinationID:v18];

  v19 = [dCopy substringFromIndex:v4];
  [(CSDPauseDigitsQueue *)self setOriginalPauseDigitsString:v19];
}

- (CSDPauseDigitsQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end