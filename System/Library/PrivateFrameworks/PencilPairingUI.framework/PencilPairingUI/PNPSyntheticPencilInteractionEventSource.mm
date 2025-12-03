@interface PNPSyntheticPencilInteractionEventSource
- (PNPPencilInteractionEventDestination)eventDestination;
- (int64_t)_playlistPositionForPosition:(int64_t)position;
- (void)_playEventAtPlayheadPosition:(int64_t)position;
- (void)play;
@end

@implementation PNPSyntheticPencilInteractionEventSource

- (void)play
{
  self->_cancelled = 0;
  if (!self->_playing)
  {
    self->_playing = 1;
    [(PNPSyntheticPencilInteractionEventSource *)self _playEventAtPlayheadPosition:0];
  }
}

- (void)_playEventAtPlayheadPosition:(int64_t)position
{
  playlist = [(PNPSyntheticPencilInteractionEventSource *)self playlist];
  v6 = [playlist objectAtIndex:position];

  eventDestination = [(PNPSyntheticPencilInteractionEventSource *)self eventDestination];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__PNPSyntheticPencilInteractionEventSource__playEventAtPlayheadPosition___block_invoke;
  v8[3] = &unk_279A0A150;
  v8[4] = self;
  v8[5] = position;
  [v6 serviceDestination:eventDestination fromSource:self withCompletionBlock:v8];
}

uint64_t __73__PNPSyntheticPencilInteractionEventSource__playEventAtPlayheadPosition___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1[9] == 1)
  {
    v1[8] = 0;
    *(*(result + 32) + 9) = 0;
  }

  else
  {
    v2 = [*(result + 32) _playlistPositionForPosition:*(result + 40) + 1];

    return [v1 _playEventAtPlayheadPosition:v2];
  }

  return result;
}

- (int64_t)_playlistPositionForPosition:(int64_t)position
{
  playlist = [(PNPSyntheticPencilInteractionEventSource *)self playlist];
  v5 = [playlist count] - 1;

  if (v5 >= position)
  {
    return position;
  }

  else
  {
    return 0;
  }
}

- (PNPPencilInteractionEventDestination)eventDestination
{
  WeakRetained = objc_loadWeakRetained(&self->eventDestination);

  return WeakRetained;
}

@end