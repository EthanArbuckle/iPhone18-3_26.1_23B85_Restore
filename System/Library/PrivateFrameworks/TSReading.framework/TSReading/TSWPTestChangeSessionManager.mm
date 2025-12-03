@interface TSWPTestChangeSessionManager
- (TSWPTestChangeSessionManager)initWithContext:(id)context;
- (id)changeSessionAuthorCreatedWithCommand:(id *)command;
- (void)dealloc;
- (void)startNewChangeSessionIfNecessaryGettingInsertAuthorCommand:(id *)command;
@end

@implementation TSWPTestChangeSessionManager

- (TSWPTestChangeSessionManager)initWithContext:(id)context
{
  v9.receiver = self;
  v9.super_class = TSWPTestChangeSessionManager;
  v4 = [(TSWPTestChangeSessionManager *)&v9 init];
  if (v4)
  {
    v5 = [TSKAnnotationAuthor alloc];
    v6 = -[TSKAnnotationAuthor initWithContext:name:color:](v5, "initWithContext:name:color:", context, @"Testing Author", [MEMORY[0x277D6C2A8] greenColor]);
    v7 = [(TSPObject *)[TSWPChangeSession alloc] initWithContext:context];
    v4->_currentSession = v7;
    [(TSWPChangeSession *)v7 setSessionUID:1];
    [(TSWPChangeSession *)v4->_currentSession setAuthor:v6];
    -[TSWPChangeSession setDate:](v4->_currentSession, "setDate:", [MEMORY[0x277CBEAA8] date]);
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSWPTestChangeSessionManager;
  [(TSWPTestChangeSessionManager *)&v3 dealloc];
}

- (id)changeSessionAuthorCreatedWithCommand:(id *)command
{
  result = self->_currentSession;
  if (!result)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTestChangeSessionManager changeSessionAuthorCreatedWithCommand:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTestChangeSessionManager.mm"), 48, @"invalid nil value for '%s'", "_currentSession"}];
    return self->_currentSession;
  }

  return result;
}

- (void)startNewChangeSessionIfNecessaryGettingInsertAuthorCommand:(id *)command
{
  currentSession = self->_currentSession;
  if (!currentSession)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSWPTestChangeSessionManager startNewChangeSessionIfNecessaryGettingInsertAuthorCommand:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/text/TSWPTestChangeSessionManager.mm"), 55, @"invalid nil value for '%s'", "_currentSession"}];
    currentSession = self->_currentSession;
  }

  v7 = currentSession;
  self->_currentSession = [(TSPObject *)[TSWPChangeSession alloc] initWithContext:[(TSPObject *)currentSession context]];
  [(TSWPChangeSession *)self->_currentSession setSessionUID:[(TSWPChangeSession *)v7 sessionUID]+ 1];
  [(TSWPChangeSession *)self->_currentSession setAuthor:[(TSWPChangeSession *)v7 author]];
  -[TSWPChangeSession setDate:](self->_currentSession, "setDate:", [MEMORY[0x277CBEAA8] date]);
}

@end