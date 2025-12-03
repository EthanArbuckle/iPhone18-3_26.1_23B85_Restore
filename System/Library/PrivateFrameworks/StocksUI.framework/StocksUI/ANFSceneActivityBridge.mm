@interface ANFSceneActivityBridge
- (void)performOnSceneDidDisconnect:(id)disconnect;
@end

@implementation ANFSceneActivityBridge

- (void)performOnSceneDidDisconnect:(id)disconnect
{
  v4 = _Block_copy(disconnect);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2205889EC;
  *(v6 + 24) = v5;
  swift_beginAccess();
  v7 = *self->sceneDidDisconnectObserverBlocks;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *self->sceneDidDisconnectObserverBlocks = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_220587E20(0, v7[2] + 1, 1, v7);
    *self->sceneDidDisconnectObserverBlocks = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_220587E20((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_2205889F4;
  v11[5] = v6;
  *self->sceneDidDisconnectObserverBlocks = v7;
  swift_endAccess();
}

@end