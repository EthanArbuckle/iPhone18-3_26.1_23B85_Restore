@interface RSFloorPlan
- (RSFloorPlan)init;
- (RSFloorPlan)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)appendFloorPlan:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateObjects:(id)a3;
- (void)updateStructure:(id)a3;
- (void)writeToJson:(id)a3;
- (void)writeToObj:(id)a3;
- (void)writeToPlist:(id)a3;
@end

@implementation RSFloorPlan

- (void)appendFloorPlan:(id)a3
{
  v125 = a3;
  v8 = objc_msgSend_walls(self, v4, v5);
  if (v8)
  {
    v9 = objc_msgSend_walls(self, v6, v7);
    v12 = objc_msgSend_walls(v125, v10, v11);
    v14 = objc_msgSend_arrayByAddingObjectsFromArray_(v9, v13, v12);
    sub_2622AE900(self, v14);
  }

  else
  {
    v9 = objc_msgSend_walls(v125, v6, v7);
    sub_2622AE900(self, v9);
  }

  v19 = objc_msgSend_doors(self, v15, v16);
  if (v19)
  {
    v20 = objc_msgSend_doors(self, v17, v18);
    v23 = objc_msgSend_doors(v125, v21, v22);
    v25 = objc_msgSend_arrayByAddingObjectsFromArray_(v20, v24, v23);
    sub_26223FCDC(self, v25);
  }

  else
  {
    v20 = objc_msgSend_doors(v125, v17, v18);
    sub_26223FCDC(self, v20);
  }

  v30 = objc_msgSend_windows(self, v26, v27);
  if (v30)
  {
    v31 = objc_msgSend_windows(self, v28, v29);
    v34 = objc_msgSend_windows(v125, v32, v33);
    v36 = objc_msgSend_arrayByAddingObjectsFromArray_(v31, v35, v34);
    sub_2622AE910(self, v36);
  }

  else
  {
    v31 = objc_msgSend_windows(v125, v28, v29);
    sub_2622AE910(self, v31);
  }

  v41 = objc_msgSend_openings(self, v37, v38);
  if (v41)
  {
    v42 = objc_msgSend_openings(self, v39, v40);
    v45 = objc_msgSend_openings(v125, v43, v44);
    v47 = objc_msgSend_arrayByAddingObjectsFromArray_(v42, v46, v45);
    sub_2622AE920(self, v47);
  }

  else
  {
    v42 = objc_msgSend_openings(v125, v39, v40);
    sub_2622AE920(self, v42);
  }

  v52 = objc_msgSend_opendoors(self, v48, v49);
  if (v52)
  {
    v53 = objc_msgSend_opendoors(self, v50, v51);
    v56 = objc_msgSend_opendoors(v125, v54, v55);
    v58 = objc_msgSend_arrayByAddingObjectsFromArray_(v53, v57, v56);
    sub_26223FCBC(self, v58);
  }

  else
  {
    v53 = objc_msgSend_opendoors(v125, v50, v51);
    sub_26223FCBC(self, v53);
  }

  v63 = objc_msgSend_curvedWalls(self, v59, v60);
  if (v63)
  {
    v64 = objc_msgSend_curvedWalls(self, v61, v62);
    v67 = objc_msgSend_curvedWalls(v125, v65, v66);
    v69 = objc_msgSend_arrayByAddingObjectsFromArray_(v64, v68, v67);
    sub_2622AE930(self, v69);
  }

  else
  {
    v64 = objc_msgSend_curvedWalls(v125, v61, v62);
    sub_2622AE930(self, v64);
  }

  v74 = objc_msgSend_curvedDoors(self, v70, v71);
  if (v74)
  {
    v75 = objc_msgSend_curvedDoors(self, v72, v73);
    v78 = objc_msgSend_curvedDoors(v125, v76, v77);
    v80 = objc_msgSend_arrayByAddingObjectsFromArray_(v75, v79, v78);
    sub_2622AE940(self, v80);
  }

  else
  {
    v75 = objc_msgSend_curvedDoors(v125, v72, v73);
    sub_2622AE940(self, v75);
  }

  v85 = objc_msgSend_curvedWindows(self, v81, v82);
  if (v85)
  {
    v86 = objc_msgSend_curvedWindows(self, v83, v84);
    v89 = objc_msgSend_curvedWindows(v125, v87, v88);
    v91 = objc_msgSend_arrayByAddingObjectsFromArray_(v86, v90, v89);
    sub_2622AE950(self, v91);
  }

  else
  {
    v86 = objc_msgSend_curvedWindows(v125, v83, v84);
    sub_2622AE950(self, v86);
  }

  v96 = objc_msgSend_floors(self, v92, v93);
  if (v96)
  {
    v97 = objc_msgSend_floors(self, v94, v95);
    v100 = objc_msgSend_floors(v125, v98, v99);
    v102 = objc_msgSend_arrayByAddingObjectsFromArray_(v97, v101, v100);
    sub_2622AE960(self, v102);
  }

  else
  {
    v97 = objc_msgSend_floors(v125, v94, v95);
    sub_2622AE960(self, v97);
  }

  v107 = objc_msgSend_objects(self, v103, v104);
  if (v107)
  {
    v108 = objc_msgSend_objects(self, v105, v106);
    v111 = objc_msgSend_objects(v125, v109, v110);
    v113 = objc_msgSend_arrayByAddingObjectsFromArray_(v108, v112, v111);
    sub_26223FCCC(self, v113);
  }

  else
  {
    v108 = objc_msgSend_objects(v125, v105, v106);
    sub_26223FCCC(self, v108);
  }

  v118 = objc_msgSend_roomTypes(self, v114, v115);
  if (v118)
  {
    v119 = objc_msgSend_roomTypes(self, v116, v117);
    v122 = objc_msgSend_roomTypes(v125, v120, v121);
    v124 = objc_msgSend_arrayByAddingObjectsFromArray_(v119, v123, v122);
    sub_2622AE970(self, v124);
  }

  else
  {
    v119 = objc_msgSend_roomTypes(v125, v116, v117);
    sub_2622AE970(self, v119);
  }
}

- (void)writeToPlist:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_dictionaryRepresentation(self, v4, v5);
  objc_msgSend_writeToFile_atomically_(v6, v7, v8, 1);
}

- (void)writeToJson:(id)a3
{
  v4 = a3;
  v5 = v4;
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sub_2621D0F64(__p, v8);
  sub_26234A5B8(self, __p, v9);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)writeToObj:(id)a3
{
  v4 = a3;
  v5 = v4;
  v8 = objc_msgSend_UTF8String(v5, v6, v7);
  sub_2621D0F64(&__p, v8);
  sub_26234A690(self, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (RSFloorPlan)initWithCoder:(id)a3
{
  v4 = a3;
  v62.receiver = self;
  v62.super_class = RSFloorPlan;
  v5 = [(RSFloorPlan *)&v62 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    v12 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v11, v10, @"walls");
    walls = v5->walls;
    v5->walls = v12;

    v15 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v14, v10, @"openings");
    openings = v5->openings;
    v5->openings = v15;

    v18 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v17, v10, @"windows");
    windows = v5->windows;
    v5->windows = v18;

    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v10, @"doors");
    doors = v5->doors;
    v5->doors = v21;

    v24 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v23, v10, @"open_doors");
    opendoors = v5->opendoors;
    v5->opendoors = v24;

    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v30 = objc_msgSend_setWithObjects_(v26, v29, v27, v28, 0);
    v32 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v31, v30, @"objects");
    objects = v5->objects;
    v5->objects = v32;

    v34 = MEMORY[0x277CBEB98];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v38 = objc_msgSend_setWithObjects_(v34, v37, v35, v36, 0);
    v40 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v39, v38, @"curved_walls");
    curvedWalls = v5->curvedWalls;
    v5->curvedWalls = v40;

    v42 = MEMORY[0x277CBEB98];
    v43 = objc_opt_class();
    v44 = objc_opt_class();
    v46 = objc_msgSend_setWithObjects_(v42, v45, v43, v44, 0);
    v48 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v47, v46, @"room_types");
    roomTypes = v5->roomTypes;
    v5->roomTypes = v48;

    v51 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v50, v10, @"floors");
    floors = v5->floors;
    v5->floors = v51;

    v54 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v53, v38, @"curved_windows");
    curvedWindows = v5->curvedWindows;
    v5->curvedWindows = v54;

    v57 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v56, v38, @"curved_doors");
    curvedDoors = v5->curvedDoors;
    v5->curvedDoors = v57;

    sub_2622AEE64(v5, v59, v60);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  objc_msgSend_encodeObject_forKey_(v15, v4, self->walls, @"walls");
  objc_msgSend_encodeObject_forKey_(v15, v5, self->openings, @"openings");
  objc_msgSend_encodeObject_forKey_(v15, v6, self->windows, @"windows");
  objc_msgSend_encodeObject_forKey_(v15, v7, self->doors, @"doors");
  objc_msgSend_encodeObject_forKey_(v15, v8, self->opendoors, @"open_doors");
  objc_msgSend_encodeObject_forKey_(v15, v9, self->objects, @"objects");
  objc_msgSend_encodeObject_forKey_(v15, v10, self->curvedWalls, @"curved_walls");
  objc_msgSend_encodeObject_forKey_(v15, v11, self->roomTypes, @"room_types");
  objc_msgSend_encodeObject_forKey_(v15, v12, self->floors, @"floors");
  objc_msgSend_encodeObject_forKey_(v15, v13, self->curvedWindows, @"curved_windows");
  objc_msgSend_encodeObject_forKey_(v15, v14, self->curvedDoors, @"curved_doors");
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RSFloorPlan);
  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = objc_msgSend_initWithArray_copyItems_(v5, v6, self->walls, 1);
  walls = v4->walls;
  v4->walls = v7;

  v9 = objc_alloc(MEMORY[0x277CBEA60]);
  v11 = objc_msgSend_initWithArray_copyItems_(v9, v10, self->windows, 1);
  windows = v4->windows;
  v4->windows = v11;

  v13 = objc_alloc(MEMORY[0x277CBEA60]);
  v15 = objc_msgSend_initWithArray_copyItems_(v13, v14, self->doors, 1);
  doors = v4->doors;
  v4->doors = v15;

  v17 = objc_alloc(MEMORY[0x277CBEA60]);
  v19 = objc_msgSend_initWithArray_copyItems_(v17, v18, self->openings, 1);
  openings = v4->openings;
  v4->openings = v19;

  v21 = objc_alloc(MEMORY[0x277CBEA60]);
  v23 = objc_msgSend_initWithArray_copyItems_(v21, v22, self->opendoors, 1);
  opendoors = v4->opendoors;
  v4->opendoors = v23;

  v4->groupId = self->groupId;
  v4->ceilingHeight = self->ceilingHeight;
  v4->floorHeight = self->floorHeight;
  v25 = objc_alloc(MEMORY[0x277CBEA60]);
  v27 = objc_msgSend_initWithArray_copyItems_(v25, v26, self->objects, 1);
  objects = v4->objects;
  v4->objects = v27;

  v29 = objc_alloc(MEMORY[0x277CBEA60]);
  v31 = objc_msgSend_initWithArray_copyItems_(v29, v30, self->curvedWalls, 1);
  curvedWalls = v4->curvedWalls;
  v4->curvedWalls = v31;

  v33 = objc_alloc(MEMORY[0x277CBEA60]);
  v35 = objc_msgSend_initWithArray_copyItems_(v33, v34, self->roomTypes, 1);
  roomTypes = v4->roomTypes;
  v4->roomTypes = v35;

  v37 = objc_alloc(MEMORY[0x277CBEA60]);
  v39 = objc_msgSend_initWithArray_copyItems_(v37, v38, self->floors, 1);
  floors = v4->floors;
  v4->floors = v39;

  v41 = objc_alloc(MEMORY[0x277CBEA60]);
  v43 = objc_msgSend_initWithArray_copyItems_(v41, v42, self->curvedWindows, 1);
  curvedWindows = v4->curvedWindows;
  v4->curvedWindows = v43;

  v45 = objc_alloc(MEMORY[0x277CBEA60]);
  v47 = objc_msgSend_initWithArray_copyItems_(v45, v46, self->curvedDoors, 1);
  curvedDoors = v4->curvedDoors;
  v4->curvedDoors = v47;

  return v4;
}

- (void)updateStructure:(id)a3
{
  v44 = a3;
  v6 = objc_msgSend_walls(v44, v4, v5);
  walls = self->walls;
  self->walls = v6;

  v10 = objc_msgSend_openings(v44, v8, v9);
  openings = self->openings;
  self->openings = v10;

  v14 = objc_msgSend_windows(v44, v12, v13);
  windows = self->windows;
  self->windows = v14;

  v18 = objc_msgSend_doors(v44, v16, v17);
  doors = self->doors;
  self->doors = v18;

  v22 = objc_msgSend_opendoors(v44, v20, v21);
  opendoors = self->opendoors;
  self->opendoors = v22;

  v26 = objc_msgSend_curvedWalls(v44, v24, v25);
  curvedWalls = self->curvedWalls;
  self->curvedWalls = v26;

  v30 = objc_msgSend_roomTypes(v44, v28, v29);
  roomTypes = self->roomTypes;
  self->roomTypes = v30;

  v34 = objc_msgSend_floors(v44, v32, v33);
  floors = self->floors;
  self->floors = v34;

  v38 = objc_msgSend_curvedWindows(v44, v36, v37);
  curvedWindows = self->curvedWindows;
  self->curvedWindows = v38;

  v42 = objc_msgSend_curvedDoors(v44, v40, v41);
  curvedDoors = self->curvedDoors;
  self->curvedDoors = v42;
}

- (void)updateObjects:(id)a3
{
  v8 = a3;
  v6 = objc_msgSend_copy(v8, v4, v5);
  objects = self->objects;
  self->objects = v6;
}

- (id)dictionaryRepresentation
{
  v69 = *MEMORY[0x277D85DE8];
  v66[0] = @"walls";
  v61 = sub_2622AFA60(self->walls, 0);
  v67[0] = v61;
  v66[1] = @"doors";
  v57 = sub_2622AFA60(self->doors, 2);
  v67[1] = v57;
  v66[2] = @"windows";
  v58 = sub_2622AFA60(self->windows, 1);
  v67[2] = v58;
  v66[3] = @"openings";
  v59 = sub_2622AFA60(self->openings, 3);
  v67[3] = v59;
  v66[4] = @"open_doors";
  v60 = sub_2622AFA60(self->opendoors, 4);
  v67[4] = v60;
  v66[5] = @"objects";
  v3 = self->objects;
  v6 = v3;
  if (v3 && objc_msgSend_count(v3, v4, v5))
  {
    v9 = MEMORY[0x277CBEB18];
    v10 = objc_msgSend_count(v6, v7, v8);
    v12 = objc_msgSend_arrayWithCapacity_(v9, v11, v10);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v13 = v6;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v62, v68, 16);
    if (v17)
    {
      v18 = *v63;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v63 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = objc_msgSend_dictionaryRepresentation(*(*(&v62 + 1) + 8 * i), v15, v16);
          objc_msgSend_addObject_(v12, v21, v20);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v62, v68, 16);
      }

      while (v17);
    }

    v24 = objc_msgSend_copy(v12, v22, v23);
  }

  else
  {
    v24 = MEMORY[0x277CBEBF8];
  }

  v67[5] = v24;
  v66[6] = @"curved_walls";
  v25 = sub_2622AFC34(self->curvedWalls, 0);
  v67[6] = v25;
  v66[7] = @"room_types";
  v26 = self->roomTypes;
  v29 = v26;
  if (v26 && objc_msgSend_count(v26, v27, v28))
  {
    v32 = MEMORY[0x277CBEB18];
    v33 = objc_msgSend_count(v29, v30, v31);
    v35 = objc_msgSend_arrayWithCapacity_(v32, v34, v33);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v36 = v29;
    v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v62, v68, 16);
    if (v40)
    {
      v41 = *v63;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v63 != v41)
          {
            objc_enumerationMutation(v36);
          }

          v43 = objc_msgSend_dictionaryRepresentation(*(*(&v62 + 1) + 8 * j), v38, v39);
          objc_msgSend_addObject_(v35, v44, v43);
        }

        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v38, &v62, v68, 16);
      }

      while (v40);
    }

    v47 = objc_msgSend_copy(v35, v45, v46);
  }

  else
  {
    v47 = MEMORY[0x277CBEBF8];
  }

  v67[7] = v47;
  v66[8] = @"floors";
  v48 = sub_2622AFA60(self->floors, 5);
  v67[8] = v48;
  v66[9] = @"curved_windows";
  v49 = sub_2622AFC34(self->curvedWindows, 1);
  v67[9] = v49;
  v66[10] = @"curved_doors";
  v50 = sub_2622AFC34(self->curvedDoors, 2);
  v67[10] = v50;
  v66[11] = @"story";
  v52 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v51, self->storyLevel);
  v67[11] = v52;
  v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, v67, v66, 12);

  v55 = *MEMORY[0x277D85DE8];

  return v54;
}

- (RSFloorPlan)init
{
  v48.receiver = self;
  v48.super_class = RSFloorPlan;
  v4 = [(RSFloorPlan *)&v48 init];
  if (v4)
  {
    v5 = objc_msgSend_array(MEMORY[0x277CBEA60], v2, v3);
    walls = v4->walls;
    v4->walls = v5;

    v9 = objc_msgSend_array(MEMORY[0x277CBEA60], v7, v8);
    openings = v4->openings;
    v4->openings = v9;

    v13 = objc_msgSend_array(MEMORY[0x277CBEA60], v11, v12);
    windows = v4->windows;
    v4->windows = v13;

    v17 = objc_msgSend_array(MEMORY[0x277CBEA60], v15, v16);
    doors = v4->doors;
    v4->doors = v17;

    v21 = objc_msgSend_array(MEMORY[0x277CBEA60], v19, v20);
    opendoors = v4->opendoors;
    v4->opendoors = v21;

    v25 = objc_msgSend_array(MEMORY[0x277CBEA60], v23, v24);
    objects = v4->objects;
    v4->objects = v25;

    v29 = objc_msgSend_array(MEMORY[0x277CBEA60], v27, v28);
    curvedWalls = v4->curvedWalls;
    v4->curvedWalls = v29;

    v33 = objc_msgSend_array(MEMORY[0x277CBEA60], v31, v32);
    roomTypes = v4->roomTypes;
    v4->roomTypes = v33;

    v37 = objc_msgSend_array(MEMORY[0x277CBEA60], v35, v36);
    floors = v4->floors;
    v4->floors = v37;

    v41 = objc_msgSend_array(MEMORY[0x277CBEA60], v39, v40);
    curvedWindows = v4->curvedWindows;
    v4->curvedWindows = v41;

    v45 = objc_msgSend_array(MEMORY[0x277CBEA60], v43, v44);
    curvedDoors = v4->curvedDoors;
    v4->curvedDoors = v45;

    *&v4->groupId = 0;
    *&v4->floorHeight = 0;
    *v4->translationXYZ = 0;
    *&v4->translationXYZ[8] = 0;
    v4->storyLevel = 0;
  }

  return v4;
}

@end