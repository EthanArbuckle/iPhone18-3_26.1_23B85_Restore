@interface TSUProgressStage
- (TSUProgressStage)initWithSteps:(double)steps takingSteps:(double)takingSteps inContext:(id)context;
- (double)overallProgress;
- (id)initRootStageInContext:(id)context;
- (void)dealloc;
- (void)setProgress:(double)progress;
@end

@implementation TSUProgressStage

- (id)initRootStageInContext:(id)context
{
  v5.receiver = self;
  v5.super_class = TSUProgressStage;
  result = [(TSUProgressStage *)&v5 init];
  if (result)
  {
    *(result + 8) = xmmword_26CBEEB50;
    *(result + 5) = 0x3FF0000000000000;
    *(result + 6) = 0;
    *(result + 7) = context;
  }

  return result;
}

- (TSUProgressStage)initWithSteps:(double)steps takingSteps:(double)takingSteps inContext:(id)context
{
  v12.receiver = self;
  v12.super_class = TSUProgressStage;
  v8 = [(TSUProgressStage *)&v12 init];
  if (v8)
  {
    currentStage = [context currentStage];
    v8->m_parentStage = currentStage;
    v8->m_currentPosition = 0.0;
    v8->m_totalSteps = steps;
    v8->m_stepsInParent = takingSteps;
    [(TSUProgressStage *)currentStage currentPosition];
    v8->m_startInParent = v10;
    v8->m_nextSubStageParentSize = 1.0;
    v8->m_context = context;
  }

  return v8;
}

- (void)dealloc
{
  self->m_parentStage = 0;
  v3.receiver = self;
  v3.super_class = TSUProgressStage;
  [(TSUProgressStage *)&v3 dealloc];
}

- (void)setProgress:(double)progress
{
  selfCopy = self;
  m_totalSteps = self->m_totalSteps;
  if (progress - m_totalSteps <= 0.0000001)
  {
    if (progress - m_totalSteps <= 0.0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    do
    {
      self = [(TSUProgressStage *)self parentStage];
    }

    while (self);
    m_totalSteps = selfCopy->m_totalSteps;
  }

  progress = m_totalSteps;
LABEL_6:
  m_currentPosition = selfCopy->m_currentPosition;
  if (m_currentPosition - progress <= 0.0 || m_currentPosition - progress > 0.0000001)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = selfCopy->m_currentPosition;
  }

  if (m_currentPosition != progressCopy)
  {
    selfCopy->m_currentPosition = progressCopy;
    m_parentStage = selfCopy->m_parentStage;
    if (m_parentStage)
    {
      v9 = selfCopy->m_startInParent + progressCopy / m_totalSteps * selfCopy->m_stepsInParent;

      [(TSUProgressStage *)m_parentStage setProgress:v9];
    }

    else
    {
      m_context = selfCopy->m_context;
      [(TSUProgressStage *)selfCopy overallProgress];

      [(TSUProgressContext *)m_context reportProgress:progressCopy overallProgress:v11];
    }
  }
}

- (double)overallProgress
{
  if (!self->m_parentStage)
  {
    return self->m_currentPosition / self->m_totalSteps;
  }

  [(TSUProgressStage *)self->m_parentStage overallProgress];
  return result;
}

@end