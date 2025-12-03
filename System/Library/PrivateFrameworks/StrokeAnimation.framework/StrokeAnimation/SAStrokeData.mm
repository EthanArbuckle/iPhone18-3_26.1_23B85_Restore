@interface SAStrokeData
- (SAStrokeData)initWithCharacter:(id)character strokeAnimationRepresention:(id)represention strokeNames:(id)names pronunciation:(id)pronunciation;
- (SAStrokeData)initWithCharacters:(id)characters strokeAnimationRepresention:(id)represention strokeNames:(id)names pronunciations:(id)pronunciations;
@end

@implementation SAStrokeData

- (SAStrokeData)initWithCharacter:(id)character strokeAnimationRepresention:(id)represention strokeNames:(id)names pronunciation:(id)pronunciation
{
  v30[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, character);
  v26 = 0;
  objc_storeStrong(&v26, represention);
  v25 = 0;
  objc_storeStrong(&v25, names);
  v24 = 0;
  objc_storeStrong(&v24, pronunciation);
  v6 = selfCopy;
  selfCopy = 0;
  v23.receiver = v6;
  v23.super_class = SAStrokeData;
  v18 = [(SAStrokeData *)&v23 init];
  selfCopy = v18;
  objc_storeStrong(&selfCopy, v18);
  if (v18)
  {
    v14 = [SAStrokeDataInternal alloc];
    v21 = 0;
    if (location[0])
    {
      v30[0] = location[0];
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
      v21 = 1;
      v13 = v22;
    }

    else
    {
      v13 = 0;
    }

    v11 = v26;
    v12 = v25;
    v19 = 0;
    if (v24)
    {
      v29 = v24;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      v19 = 1;
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

    v9 = [(SAStrokeDataInternal *)v14 initWithCharacters:v13 strokeAnimationRepresention:v11 strokeNames:v12 pronunciations:v10];
    [(SAStrokeData *)selfCopy setUnderlyingObject:?];
    MEMORY[0x277D82BD8](v9);
    if (v19)
    {
      MEMORY[0x277D82BD8](v20);
    }

    if (v21)
    {
      MEMORY[0x277D82BD8](v22);
    }
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  *MEMORY[0x277D85DE8];
  return v8;
}

- (SAStrokeData)initWithCharacters:(id)characters strokeAnimationRepresention:(id)represention strokeNames:(id)names pronunciations:(id)pronunciations
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, characters);
  v18 = 0;
  objc_storeStrong(&v18, represention);
  v17 = 0;
  objc_storeStrong(&v17, names);
  v16 = 0;
  objc_storeStrong(&v16, pronunciations);
  v6 = selfCopy;
  selfCopy = 0;
  v15.receiver = v6;
  v15.super_class = SAStrokeData;
  v14 = [(SAStrokeData *)&v15 init];
  selfCopy = v14;
  objc_storeStrong(&selfCopy, v14);
  if (v14)
  {
    v7 = [SAStrokeDataInternal alloc];
    v10 = [(SAStrokeDataInternal *)v7 initWithCharacters:location[0] strokeAnimationRepresention:v18 strokeNames:v17 pronunciations:v16];
    [(SAStrokeData *)selfCopy setUnderlyingObject:?];
    MEMORY[0x277D82BD8](v10);
  }

  v9 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v9;
}

@end