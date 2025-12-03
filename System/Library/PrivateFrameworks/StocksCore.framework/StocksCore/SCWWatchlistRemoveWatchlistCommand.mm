@interface SCWWatchlistRemoveWatchlistCommand
- (SCWWatchlistRemoveWatchlistCommand)initWithCoder:(id)coder;
- (SCWWatchlistRemoveWatchlistCommand)initWithWatchlistIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithZone:(id)zone;
@end

@implementation SCWWatchlistRemoveWatchlistCommand

- (SCWWatchlistRemoveWatchlistCommand)initWithWatchlistIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SCWWatchlistRemoveWatchlistCommand;
  v5 = [(SCWWatchlistRemoveWatchlistCommand *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    watchlistIdentifier = v5->_watchlistIdentifier;
    v5->_watchlistIdentifier = v6;
  }

  return v5;
}

- (void)executeWithZone:(id)zone
{
  zoneCopy = zone;
  watchlistIdentifier = [(SCWWatchlistRemoveWatchlistCommand *)self watchlistIdentifier];
  [zoneCopy deleteRecordWithName:watchlistIdentifier];
}

- (SCWWatchlistRemoveWatchlistCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"watchlistIdentifier"];

  if (v5)
  {
    self = [(SCWWatchlistRemoveWatchlistCommand *)self initWithWatchlistIdentifier:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v7 = selfCopy;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  watchlistIdentifier = [(SCWWatchlistRemoveWatchlistCommand *)self watchlistIdentifier];
  [coderCopy encodeObject:watchlistIdentifier forKey:@"watchlistIdentifier"];
}

@end