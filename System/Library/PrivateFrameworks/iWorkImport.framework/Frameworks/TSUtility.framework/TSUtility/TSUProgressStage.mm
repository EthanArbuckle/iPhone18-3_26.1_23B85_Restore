@interface TSUProgressStage
- (TSUProgressStage)initWithSteps:(double)a3 takingSteps:(double)a4 inContext:(id)a5;
- (double)overallProgress;
- (id)initRootStageInContext:(id)a3;
- (void)dealloc;
- (void)setProgress:(double)a3;
@end

@implementation TSUProgressStage

- (id)initRootStageInContext:(id)a3
{
  v5.receiver = self;
  v5.super_class = TSUProgressStage;
  result = [(TSUProgressStage *)&v5 init];
  if (result)
  {
    *(result + 8) = xmmword_277133BF0;
    *(result + 5) = 0x3FF0000000000000;
    *(result + 6) = 0;
    *(result + 7) = a3;
  }

  return result;
}

- (TSUProgressStage)initWithSteps:(double)a3 takingSteps:(double)a4 inContext:(id)a5
{
  v12.receiver = self;
  v12.super_class = TSUProgressStage;
  v8 = [(TSUProgressStage *)&v12 init];
  if (v8)
  {
    v9 = [a5 currentStage];
    v8->m_parentStage = v9;
    v8->m_currentPosition = 0.0;
    v8->m_totalSteps = a3;
    v8->m_stepsInParent = a4;
    [(TSUProgressStage *)v9 currentPosition];
    v8->m_startInParent = v10;
    v8->m_nextSubStageParentSize = 1.0;
    v8->m_context = a5;
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

- (void)setProgress:(double)a3
{
  v3 = self;
  m_totalSteps = self->m_totalSteps;
  if (a3 - m_totalSteps <= 0.0000001)
  {
    if (a3 - m_totalSteps <= 0.0)
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
    m_totalSteps = v3->m_totalSteps;
  }

  a3 = m_totalSteps;
LABEL_6:
  m_currentPosition = v3->m_currentPosition;
  if (m_currentPosition - a3 <= 0.0 || m_currentPosition - a3 > 0.0000001)
  {
    v7 = a3;
  }

  else
  {
    v7 = v3->m_currentPosition;
  }

  if (m_currentPosition != v7)
  {
    v3->m_currentPosition = v7;
    m_parentStage = v3->m_parentStage;
    if (m_parentStage)
    {
      v9 = v3->m_startInParent + v7 / m_totalSteps * v3->m_stepsInParent;

      [(TSUProgressStage *)m_parentStage setProgress:v9];
    }

    else
    {
      m_context = v3->m_context;
      [(TSUProgressStage *)v3 overallProgress];

      MEMORY[0x2821F9670](m_context, sel_reportProgress_overallProgress_);
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