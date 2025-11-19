@interface NSInsertionPointHelper
- (void)dealloc;
@end

@implementation NSInsertionPointHelper

- (void)dealloc
{
  logicalPositions = self->_logicalPositions;
  if (logicalPositions)
  {
    free(logicalPositions);
  }

  logicalLeftBoundaries = self->_logicalLeftBoundaries;
  if (logicalLeftBoundaries)
  {
    free(logicalLeftBoundaries);
  }

  logicalRightBoundaries = self->_logicalRightBoundaries;
  if (logicalRightBoundaries)
  {
    free(logicalRightBoundaries);
  }

  logicalCharIndexes = self->_logicalCharIndexes;
  if (logicalCharIndexes)
  {
    free(logicalCharIndexes);
  }

  displayPositions = self->_displayPositions;
  if (displayPositions)
  {
    free(displayPositions);
  }

  displayCharIndexes = self->_displayCharIndexes;
  if (displayCharIndexes)
  {
    free(displayCharIndexes);
  }

  logicalAltPositions = self->_logicalAltPositions;
  if (logicalAltPositions)
  {
    free(logicalAltPositions);
  }

  logicalAltCharIndexes = self->_logicalAltCharIndexes;
  if (logicalAltCharIndexes)
  {
    free(logicalAltCharIndexes);
  }

  displayAltPositions = self->_displayAltPositions;
  if (displayAltPositions)
  {
    free(displayAltPositions);
  }

  displayAltCharIndexes = self->_displayAltCharIndexes;
  if (displayAltCharIndexes)
  {
    free(displayAltCharIndexes);
  }

  v13.receiver = self;
  v13.super_class = NSInsertionPointHelper;
  [(NSInsertionPointHelper *)&v13 dealloc];
}

@end