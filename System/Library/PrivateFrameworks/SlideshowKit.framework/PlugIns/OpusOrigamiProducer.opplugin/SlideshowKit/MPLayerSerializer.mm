@interface MPLayerSerializer
- (id)description;
- (void)dealloc;
- (void)insertEffectContainers:(id)containers atIndex:(int64_t)index;
- (void)moveEffectContainersFromIndices:(id)indices toIndex:(int64_t)index;
- (void)removeEffectContainersAtIndices:(id)indices;
- (void)setAudioPlaylist:(id)playlist;
- (void)setIntroTransition:(id)transition;
- (void)setLayerSerializer:(id)serializer;
@end

@implementation MPLayerSerializer

- (id)description
{
  v6.receiver = self;
  v6.super_class = MPLayerSerializer;
  v3 = [(MPLayer *)&v6 description];
  if (self->_layerSerializer)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  return [v3 stringByAppendingFormat:@"\t          Has Layer Serializer: %@\n", v4];
}

- (void)dealloc
{
  v6.receiver = self;
  v6.super_class = MPLayerSerializer;
  [(MPLayer *)&v6 cleanup];
  layerSerializer = self->_layerSerializer;
  if (layerSerializer)
  {
  }

  self->_layerSerializer = 0;
  introTransition = self->_introTransition;
  if (introTransition)
  {
  }

  self->_introTransition = 0;
  v5.receiver = self;
  v5.super_class = MPLayerSerializer;
  [(MPLayer *)&v5 dealloc];
}

- (void)setIntroTransition:(id)transition
{
  if (transition)
  {
    parentDocument = [(MPLayer *)self parentDocument];
    if ([objc_msgSend(parentDocument documentAttributeForKey:{kMPDocumentEnforceSafeTiming), "BOOLValue"}])
    {
      if ([-[MPLayer effectContainers](self "effectContainers")])
      {
        [objc_msgSend(-[MPLayer effectContainers](self "effectContainers")];
        v7 = v6;
        [transition duration];
        if (v8 > v7)
        {
          [transition setDuration:v7];
        }
      }
    }
  }

  introTransition = self->_introTransition;
  if (introTransition)
  {
    [(MPTransition *)introTransition setParent:0];
    v10 = self->_introTransition;
    if (v10)
    {

      self->_introTransition = 0;
    }
  }

  if (transition)
  {
    transitionCopy = transition;
    self->_introTransition = transitionCopy;

    [(MPTransition *)transitionCopy setParent:self];
  }

  else
  {
    layerSerializer = self->_layerSerializer;
    if (layerSerializer)
    {
      [(MCContainerSerializer *)layerSerializer setInitialTransitionID:0];
      [(MCContainerSerializer *)self->_layerSerializer setInitialTransitionDuration:0.0];
      v13 = self->_layerSerializer;

      [(MCContainerSerializer *)v13 setInitialTransitionAttributes:0];
    }
  }
}

- (void)insertEffectContainers:(id)containers atIndex:(int64_t)index
{
  v7 = objc_autoreleasePoolPush();
  if ([(MPLayer *)self parentDocument])
  {
    [objc_msgSend(-[MPLayer parentDocument](self "parentDocument")];
  }

  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    index = [(NSMutableArray *)self->super._effectContainers count];
  }

  v8 = [[NSIndexSet alloc] initWithIndexesInRange:{index, objc_msgSend(containers, "count")}];
  [(MPLayerSerializer *)self willChange:2 valuesAtIndexes:v8 forKey:@"effectContainers"];
  [(MPLayer *)self reconnectTransitionForEffectContainerAtIndex:index];
  if (!self->super._effectContainers)
  {
    self->super._effectContainers = objc_alloc_init(NSMutableArray);
  }

  v9 = 80;
  [(NSLock *)[(MPLayerInternal *)self->super._internal containerLock] lock];
  [(NSMutableArray *)self->super._effectContainers insertObjects:containers atIndexes:v8];
  if (-[MPLayer parent](self, "parent") && ![-[MPLayer parent](self "parent")])
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v19 = [containers countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(containers);
          }

          [*(*(&v41 + 1) + 8 * i) setParentLayer:self];
        }

        v20 = [containers countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v20);
    }
  }

  else
  {
    [(MPLayer *)self duration];
    v11 = v10;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v12 = [containers countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v46;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(containers);
          }

          v16 = *(*(&v45 + 1) + 8 * j);
          [v16 setParentLayer:self];
          [v16 duration];
          v11 = v11 + v17;
          if ([v16 transition])
          {
            [objc_msgSend(v16 "transition")];
            v11 = v11 - v18;
          }
        }

        v13 = [containers countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v13);
    }

    [(MPLayer *)self setDuration:v11];
  }

  if (self->_layerSerializer)
  {
    v33 = 80;
    v35 = v7;
    v23 = objc_alloc_init(NSMutableArray);
    v24 = [containers count];
    if (v24 >= 1)
    {
      v25 = v24;
      do
      {
        [v23 addObject:{-[MCMontage createParallelizerContainer](self->super._montage, "createParallelizerContainer", v33, v35)}];
        --v25;
      }

      while (v25);
    }

    v26 = [(MCContainerSerializer *)self->_layerSerializer insertPlugsForContainers:v23 atIndex:index, v33, v35];
    [(MCContainerSerializer *)self->_layerSerializer orderedPlugs];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = [containers countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = *v38;
      do
      {
        for (k = 0; k != v28; k = k + 1)
        {
          if (*v38 != v30)
          {
            objc_enumerationMutation(containers);
          }

          v32 = *(*(&v37 + 1) + 8 * k);
          [v32 setContainerParallelizer:{objc_msgSend(v23, "objectAtIndex:", v29)}];
          [v32 setContainerPlug:{objc_msgSend(v26, "objectAtIndex:", v29++)}];
        }

        v28 = [containers countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v28);
    }

    v9 = v34;
    v7 = v36;
  }

  [objc_msgSend(*(&self->super.super.isa + v9) "containerLock")];
  [(MPLayerSerializer *)self didChange:2 valuesAtIndexes:v8 forKey:@"effectContainers"];
  if ([(MPLayer *)self parentDocument])
  {
    [objc_msgSend(-[MPLayer parentDocument](self "parentDocument")];
  }

  objc_autoreleasePoolPop(v7);
}

- (void)removeEffectContainersAtIndices:(id)indices
{
  if ([(NSMutableArray *)self->super._effectContainers count])
  {
    v5 = objc_autoreleasePoolPush();
    if ([(MPLayer *)self parentDocument])
    {
      [objc_msgSend(-[MPLayer parentDocument](self "parentDocument")];
    }

    [(MPLayerSerializer *)self willChange:3 valuesAtIndexes:indices forKey:@"effectContainers"];
    layerSerializer = self->_layerSerializer;
    if (layerSerializer)
    {
      [(MCContainerSerializer *)layerSerializer removePlugsAtIndices:indices];
    }

    [(NSLock *)[(MPLayerInternal *)self->super._internal containerLock] lock];
    v7 = 0.0;
    if (-[MPLayerInternal cleaningUp](self->super._internal, "cleaningUp") || -[MPLayer parent](self, "parent") && ![-[MPLayer parent](self "parent")])
    {
      v9 = 0;
    }

    else
    {
      [(MPLayer *)self duration];
      v7 = v8;
      v9 = 1;
    }

    lastIndex = [indices lastIndex];
    if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (i = lastIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexLessThanIndex:i])
      {
        v12 = [(NSMutableArray *)self->super._effectContainers objectAtIndex:i];
        if (v9)
        {
          [(MPLayer *)self reconnectTransitionForEffectContainerAtIndex:i];
          [v12 duration];
          v7 = v7 - v13;
          if ([v12 transition])
          {
            [objc_msgSend(v12 "transition")];
            v7 = v7 + v14;
          }
        }

        [v12 setParentLayer:0];
        [v12 setContainerParallelizer:0];
        [v12 setContainerPlug:0];
      }
    }

    [(NSMutableArray *)self->super._effectContainers removeObjectsAtIndexes:indices];
    [(NSLock *)[(MPLayerInternal *)self->super._internal containerLock] unlock];
    if (v9)
    {
      v15 = 0.0;
      if (v7 >= 0.0)
      {
        v15 = v7;
      }

      [(MPLayer *)self setDuration:v15];
    }

    [(MPLayerSerializer *)self didChange:3 valuesAtIndexes:indices forKey:@"effectContainers"];
    if ([(MPLayer *)self parentDocument])
    {
      [objc_msgSend(-[MPLayer parentDocument](self "parentDocument")];
    }

    objc_autoreleasePoolPop(v5);
  }
}

- (void)moveEffectContainersFromIndices:(id)indices toIndex:(int64_t)index
{
  layerSerializer = self->_layerSerializer;
  if (layerSerializer)
  {
    [(MCContainerSerializer *)layerSerializer movePlugsAtIndices:indices toIndex:index];
  }

  firstIndex = [indices firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [indices indexGreaterThanIndex:i])
    {
      [(MPLayer *)self reconnectTransitionForEffectContainerAtIndex:i];
    }
  }

  v10 = [(NSMutableArray *)self->super._effectContainers objectsAtIndexes:indices];
  [(NSLock *)[(MPLayerInternal *)self->super._internal containerLock] lock];
  [(NSMutableArray *)self->super._effectContainers removeObjectsAtIndexes:indices];
  -[NSMutableArray insertObjects:atIndexes:](self->super._effectContainers, "insertObjects:atIndexes:", v10, +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", index, [v10 count]));
  [(NSLock *)[(MPLayerInternal *)self->super._internal containerLock] unlock];

  [(MPLayer *)self resetStartTimes];
}

- (void)setAudioPlaylist:(id)playlist
{
  audioPlaylist = self->super._audioPlaylist;
  if (audioPlaylist)
  {
    [(MPAudioPlaylist *)audioPlaylist setParentObject:0];
    [(MPAudioPlaylist *)self->super._audioPlaylist setMontage:0];
    [(MPAudioPlaylist *)self->super._audioPlaylist setAudioPlaylist:0];

    self->super._audioPlaylist = 0;
  }

  if (playlist)
  {
    playlistCopy = playlist;
    self->super._audioPlaylist = playlistCopy;
    [(MPAudioPlaylist *)playlistCopy setParentObject:self];
    if (self->_layerSerializer)
    {
      [(MPAudioPlaylist *)self->super._audioPlaylist setMontage:self->super._montage];
      v7 = self->super._audioPlaylist;
      audioPlaylistCreateIfNeeded = [(MCContainer *)self->_layerSerializer audioPlaylistCreateIfNeeded];

      [(MPAudioPlaylist *)v7 setAudioPlaylist:audioPlaylistCreateIfNeeded];
    }
  }
}

- (void)setLayerSerializer:(id)serializer
{
  serializerCopy = serializer;
  self->_layerSerializer = serializerCopy;
  if (serializerCopy)
  {
    v6 = objc_alloc_init(NSMutableArray);
    if ([(NSMutableArray *)self->super._effectContainers count])
    {
      v7 = 0;
      do
      {
        [v6 addObject:{-[MCMontage createParallelizerContainer](self->super._montage, "createParallelizerContainer")}];
        ++v7;
      }

      while (v7 < [(NSMutableArray *)self->super._effectContainers count]);
    }

    v8 = [(MCContainerSerializer *)self->_layerSerializer addPlugsForContainers:v6];
    [(MCContainerSerializer *)self->_layerSerializer orderedPlugs];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    effectContainers = self->super._effectContainers;
    v10 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v30;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(effectContainers);
          }

          v15 = *(*(&v29 + 1) + 8 * i);
          [v15 setContainerParallelizer:{objc_msgSend(v6, "objectAtIndex:", v12)}];
          [v15 setContainerPlug:{objc_msgSend(v8, "objectAtIndex:", v12++)}];
        }

        v11 = [(NSMutableArray *)effectContainers countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    audioPlaylist = self->super._audioPlaylist;
    if (audioPlaylist)
    {
      [(MPAudioPlaylist *)audioPlaylist setMontage:self->super._montage];
      [(MPAudioPlaylist *)self->super._audioPlaylist setAudioPlaylist:[(MCContainer *)self->_layerSerializer audioPlaylistCreateIfNeeded]];
    }

    introTransition = self->_introTransition;
    if (introTransition)
    {
      [(MCContainerSerializer *)self->_layerSerializer setInitialTransitionID:[(MPTransition *)introTransition transitionID]];
      [(MPTransition *)self->_introTransition duration];
      [(MCContainerSerializer *)self->_layerSerializer setInitialTransitionDuration:?];
      [(MPTransition *)self->_introTransition applyFormattedAttributes];
    }
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = self->super._effectContainers;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (j = 0; j != v20; j = j + 1)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v25 + 1) + 8 * j);
          [v23 setContainerParallelizer:0];
          [v23 setContainerPlug:0];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v20);
    }

    v24 = self->super._audioPlaylist;
    if (v24)
    {
      [(MPAudioPlaylist *)v24 setMontage:0];
      [(MPAudioPlaylist *)self->super._audioPlaylist setAudioPlaylist:0];
    }
  }
}

@end